---
name: fleet-worker
description: Do exactly one approved fleet item in the current git worktree, on its own branch fleet/<id>, check it with the item's done-check, commit, and end with a FLEET-STATUS block. Never pushes or merges. Use only when given a fleet item, from fleet-run or when the user hands over one item.
license: MIT
compatibility: Agent Skills spec. Tested target harnesses are Claude Code and Pi. Needs git and a shell.
metadata:
  kit: fleet-lab
  role: worker
---

# Fleet worker

You get one item: its id, goal, scope, steps and done-check. Do that item and nothing else.

## Settings

```text
MAX_ATTEMPTS = 2   tries to make the done-check pass
```

## Steps

1. **Branch.** Run `git branch --show-current`. If it is not `fleet/<id>`, run `git switch -c fleet/<id>`.
2. **Read the item.** If the goal, scope or done-check is missing or unclear, do not guess. Go to the last step with `result: blocked`.
3. **Do the steps.** Change only paths inside `scope`. If the work needs a file outside scope, stop with `result: blocked` and name the file.
4. **Check.** Run the done-check exactly as written. If it fails, fix and run it again, at most MAX_ATTEMPTS times.
5. **Commit.** `git add` only the files you changed, then one commit: `fleet(<id>): <title>`. Do not commit `.fleet/`.
6. **Report.** End your answer with this block and nothing after it:

```text
FLEET-STATUS
id: <id>
result: done | blocked | failed
branch: fleet/<id>
commits: <number>
files: <number of files changed>
check: <done-check command> -> <pass | fail, with the last line of output>
notes: <one to three lines: what you did, or what blocks you>
```

## Rules

- **Never** `git push`, `git merge`, `git rebase` onto another branch, or `git reset --hard`.
- **Never** write to `.fleet/` or to any path outside this worktree. The runner records your status.
- **Never** read or print secrets (`.env`, key files, tokens).
- **No extras.** No refactors, renames or formatting outside the item, even if they look useful. Put them in `notes:` as a suggestion.
- **Honest status.** If the check did not pass, the result is `failed`, even if most of the work is done.
