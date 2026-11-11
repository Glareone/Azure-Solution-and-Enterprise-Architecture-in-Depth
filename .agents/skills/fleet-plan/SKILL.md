---
name: fleet-plan
description: Analyse a repository for one stated goal (tech debt, structure, docs, diagrams) and write a fleet plan of small, independent work items that parallel agents can do in separate git worktrees. Writes only under .fleet/. Use when the user asks to plan a fleet run, split work for parallel agents, or "fleet plan".
license: MIT
compatibility: Agent Skills spec. Tested target harnesses are Claude Code and Pi. Needs git and a shell.
metadata:
  kit: fleet-lab
  role: planner
---

# Fleet plan

Turn one goal into a few small work items that can run in parallel without touching the same files. Do not change the code. A person approves every item before anything runs.

## Settings

```text
MAX_ITEMS = 5      items in one plan
STATE     = .fleet/  (local state, never committed)
```

## Steps

1. **Goal.** Restate the user's goal in one sentence. If there is none, ask for it and stop.
2. **Local state.** Create `.fleet/items/`. Add the line `.fleet/` to `.git/info/exclude` if it is not there.
3. **Survey, read-only.** Measure before you judge. Use counts, not adjectives:
   - structure: folders, file counts by type, the largest files (`wc -l`)
   - git: tracked files that look generated (`bin/`, `obj/`, `node_modules/`, `.vs/`, `dist/`), a missing `.gitignore`
   - links: relative links that do not resolve, links to old names of this repository
   - names: spaces, commas, colons or other characters that break on some systems
   - docs: very long files, headings per file, diagrams per file
   - code (if any): failing build or tests, TODO/FIXME counts, duplicated blocks
4. **Candidates.** List what you found with its count. Score each one: value (1 to 3), risk (1 to 3), size (S or M). Drop anything L. Split it, or leave it out.
5. **Pick at most MAX_ITEMS.** Take high value and low risk first.
6. **Scope every item.** List the paths or globs it may change. **No two items may share a path.** If two need the same file, merge them into one item, or add `after: <other-id>` so they run one after the other.
7. **Write one file per item** at `.fleet/items/NN-slug.md`, using the template below.
8. **Write `.fleet/plan.md`:** the goal, the survey numbers, a table of the items (id, title, scope, size, after), and what you left out and why.
9. **Stop.** Show the table. Tell the user to change `status: proposed` to `status: approved` for the items to run. Do not start any worker.

## Item template

```markdown
---
id: 01-old-repo-links
status: proposed
size: S
after:
scope:
  - "**/*.md"
---

# Rewrite links to the old repository names

## Goal
One or two sentences: what is true when this is done.

## Evidence
What the survey found, with counts and two or three examples (file:line).

## Do
Short numbered steps.

## Do not
What stays out of scope, even if it looks related.

## Done-check
A command that proves it, and its expected result. Example: `grep -rc "AZ-304-SA" --include=*.md . | grep -v ":0"` prints nothing.
```

## Rules

- **Never edit outside `.fleet/`.** You are the planner, not a worker.
- **Every done-check is a command** whose result a person can verify. "Looks better" is not a check.
- **Never read or print secrets** (`.env`, key files, tokens). If you see one in the repo, report where, without the value.
- **Small beats complete.** Five good items beat fifteen vague ones. A later run can take the rest.
