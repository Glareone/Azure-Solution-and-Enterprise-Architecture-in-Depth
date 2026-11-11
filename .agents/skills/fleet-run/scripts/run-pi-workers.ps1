<#
Run approved fleet items in parallel with Pi on a Windows host, one git worktree and branch per item.
Inside a Docker Sandbox (always Linux) use run-pi-workers.sh instead.
Usage (from the repository root, PowerShell 7 or later):  pwsh -File run-pi-workers.ps1 [-Max 3]
Env: FLEET_MODEL (default openrouter/deepseek/deepseek-v4.1-flash), FLEET_THINKING (default low)
#>
param([int]$Max = 3)
$ErrorActionPreference = 'Stop'
if ($PSVersionTable.PSVersion.Major -lt 7) { throw 'PowerShell 7 or later is needed (ForEach-Object -Parallel).' }
if (-not (Get-Command pi -ErrorAction SilentlyContinue)) { throw 'pi not found on PATH' }

$root = (git rev-parse --show-toplevel).Trim()
Set-Location $root
if (-not (Test-Path '.fleet/items')) { throw 'no .fleet/items: run fleet-plan first' }
if (-not (Test-Path '.agents/skills/fleet-worker')) { throw 'no .agents/skills/fleet-worker in this repository' }

$exclude = (git rev-parse --git-path info/exclude).Trim()
if (-not ((Test-Path $exclude) -and (Select-String -Path $exclude -Pattern '^\.fleet/$' -Quiet))) { Add-Content -Path $exclude -Value '.fleet/' }
$dirty = git status --porcelain
if ($dirty) { Write-Host 'working tree is not clean'; $dirty; exit 1 }
New-Item -ItemType Directory -Force -Path '.fleet/wt', '.fleet/logs' | Out-Null

$ready = @()
foreach ($f in Get-ChildItem '.fleet/items/*.md' | Sort-Object Name) {
    $text = Get-Content $f.FullName -Raw
    if ($text -notmatch '(?m)^status: approved\s*$') { continue }
    $id = $f.BaseName
    $after = if ($text -match '(?m)^after:[ \t]*(\S+)') { $Matches[1] } else { '' }
    if ($after) {
        $dep = ".fleet/items/$after.md"
        if (-not ((Test-Path $dep) -and ((Get-Content $dep -Raw) -match '(?m)^status: done\s*$'))) {
            Write-Host "wait ${id}: needs $after done first"
            continue
        }
    }
    $ready += $id
}
if ($ready.Count -eq 0) { Write-Host 'nothing to run'; exit 0 }
Write-Host "running $($ready.Count) item(s), at most $Max at once"

$model = if ($env:FLEET_MODEL) { $env:FLEET_MODEL } else { 'openrouter/deepseek/deepseek-v4.1-flash' }
$thinking = if ($env:FLEET_THINKING) { $env:FLEET_THINKING } else { 'low' }

$ready | ForEach-Object -ThrottleLimit $Max -Parallel {
    $id = $_
    $root = $using:root
    $item = Join-Path $root ".fleet/items/$id.md"
    $dir = Join-Path $root ".fleet/wt/$id"
    $log = Join-Path $root ".fleet/logs/$id.log"
    $skill = Join-Path $root '.agents/skills/fleet-worker'
    git -C $root worktree add -q -b "fleet/$id" $dir HEAD 2>> $log
    if ($LASTEXITCODE -ne 0) { Write-Host "skip ${id}: worktree or branch fleet/$id already exists (see $log)"; return }
    Write-Host "start $id"
    $prompt = "Use the fleet-worker skill. Item id: $id. The item:`n`n" + (Get-Content $item -Raw)
    Push-Location $dir
    try {
        & pi -p --no-session --model $using:model --thinking $using:thinking --skill $skill $prompt *>> $log
        $code = $LASTEXITCODE
    } finally { Pop-Location }
    Add-Content -Path $log -Value "pi-exit: $code"
    Write-Host "end $id (exit $code)"
}
Write-Host 'done. Logs in .fleet/logs/. Next: collect the FLEET-STATUS blocks into .fleet/report.md (fleet-run, Collect).'
