#!/usr/bin/env bash
# Run approved fleet items in parallel with Pi, one git worktree and branch per item.
# Usage (from the repository root):  run-pi-workers.sh [MAX_PARALLEL]
# Env: FLEET_MODEL (default openrouter/deepseek/deepseek-v4.1-flash), FLEET_THINKING (default low)
set -euo pipefail

if [ "${1:-}" = "--one" ]; then
  # Worker mode: called by xargs with one item id.
  id="$2"
  root="$(git rev-parse --show-toplevel)"
  item="$root/.fleet/items/$id.md"
  dir="$root/.fleet/wt/$id"
  log="$root/.fleet/logs/$id.log"
  skill="$root/.agents/skills/fleet-worker"
  if ! git -C "$root" worktree add -q -b "fleet/$id" "$dir" HEAD 2>>"$log"; then
    echo "skip $id: worktree or branch fleet/$id already exists (see $log)"
    exit 0
  fi
  echo "start $id"
  set +e
  ( cd "$dir" && pi -p --no-session \
      --model "${FLEET_MODEL:-openrouter/deepseek/deepseek-v4.1-flash}" \
      --thinking "${FLEET_THINKING:-low}" \
      --skill "$skill" \
      "Use the fleet-worker skill. Item id: $id. The item:

$(cat "$item")" </dev/null ) >>"$log" 2>&1   # </dev/null: pi -p waits for stdin EOF otherwise
  code=$?
  set -e
  echo "pi-exit: $code" >>"$log"
  echo "end $id (exit $code)"
  exit 0
fi

max="${1:-3}"
root="$(git rev-parse --show-toplevel)"
cd "$root"
command -v pi >/dev/null || { echo "pi not found on PATH"; exit 1; }
[ -d .fleet/items ] || { echo "no .fleet/items: run fleet-plan first"; exit 1; }
[ -d .agents/skills/fleet-worker ] || { echo "no .agents/skills/fleet-worker in this repository"; exit 1; }
grep -qx '.fleet/' .git/info/exclude 2>/dev/null || echo '.fleet/' >> .git/info/exclude
[ -z "$(git status --porcelain)" ] || { echo "working tree is not clean"; git status --short; exit 1; }
mkdir -p .fleet/wt .fleet/logs

ready=()
for f in .fleet/items/*.md; do
  grep -q '^status: approved' "$f" || continue
  id="$(basename "$f" .md)"
  after="$(sed -n 's/^after:[[:space:]]*//p' "$f" | head -1)"
  if [ -n "$after" ] && ! grep -q '^status: done' ".fleet/items/$after.md" 2>/dev/null; then
    echo "wait $id: needs $after done first"
    continue
  fi
  ready+=("$id")
done

[ "${#ready[@]}" -gt 0 ] || { echo "nothing to run"; exit 0; }
echo "running ${#ready[@]} item(s), at most $max at once"
printf '%s\n' "${ready[@]}" | xargs -P "$max" -I{} "$0" --one {}
echo "done. Logs in .fleet/logs/. Next: collect the FLEET-STATUS blocks into .fleet/report.md (fleet-run, Collect)."
