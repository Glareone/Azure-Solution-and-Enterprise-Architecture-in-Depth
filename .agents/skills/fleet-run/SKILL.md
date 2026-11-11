---
name: fleet-run
description: Run the approved items of a fleet plan in parallel, one fleet-worker per item, each in its own git worktree and branch, at most MAX at once, then collect their FLEET-STATUS blocks into .fleet/report.md. Never edits code or merges. Use after fleet-plan, when the user says "run the fleet" or "fleet run".
license: MIT
compatibility: Agent Skills spec. Claude Code (worker subagents) or Pi (scripts/run-pi-workers.sh). Needs git and a shell.
metadata:
  kit: fleet-lab
  role: runner
---

# Fleet run

Start one worker per approved item, wait for all of them, and write one report. You are the only writer of `.fleet/`.

## Settings

```text
MAX = 3    workers at the same time
```

## Before starting

1. `.fleet/items/` exists and at least one item has `status: approved`. If not, tell the user to run `fleet-plan` and approve items, then stop.
2. The working tree is clean (`git status --porcelain` is empty, `.fleet/` is excluded). If not, stop and say what is dirty.
3. No two approved items share a scope path. If they do, stop and name them.
4. Items with `after: <id>` wait until that item is `done`.

## Run the workers

Pick the way that matches your harness.

**Claude Code.** For each approved item, start the `fleet-worker` subagent (it runs in its own worktree). Put the full text of the item file in the task, with the line `Item id: <id>`. Start at most MAX at once, start the next one when one returns.

**Pi, or any shell.** Run the script next to this skill from the repository root:

```bash
.agents/skills/fleet-run/scripts/run-pi-workers.sh 3
```

It makes `.fleet/wt/<id>` on branch `fleet/<id>` for each approved item, runs `pi -p` with the `fleet-worker` skill in it, and writes the output to `.fleet/logs/<id>.log`. The model comes from `FLEET_MODEL` (default `openrouter/deepseek/deepseek-v4.1-flash`).

## Collect

1. For each item, take the last `FLEET-STATUS` block from the worker's answer or log. **No block means `failed`**, with the reason "no status".
2. Set the item's `status:` to the result (`done`, `blocked`, `failed`).
3. Write `.fleet/report.md`:

```markdown
# Fleet report <date>

| id | result | branch | commits | check | notes |
|---|---|---|---|---|---|

## Next
- Review each done branch (review-loop) before any PR.
- Blocked: what each one needs from me.
```

4. Show the table. Stop. Do not push, open PRs or merge. A person reviews each `done` branch first.

## Rules

- **Never** edit project files, push, merge or delete branches.
- **Never** retry a failed worker on your own. Report it. A person decides.
- **Never** read or print secrets.
