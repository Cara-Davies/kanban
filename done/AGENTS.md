# AGENTS.md — Done Archive

**Purpose:** `done/` holds completed WIP tasks. Each finished implementation gets an archived copy of its tracker and progress files here for reference and audit.

**Skill-first operation:** prefer `../skills/kanban-done-archive/SKILL.md` for archive workflow, and use this file for folder conventions.

---

## Folder layout

Each completed WIP lives in a subfolder:

```
done/
  YYYY-MM-DD-N-taskname/
    <tracker>.md           # e.g. merchant-filters-phased.md
    <tracker>-progress.json
    AGENTS.md              # task-specific summary and pointers
  AGENTS.md                # this file
```

---

## Naming: `YYYY-MM-DD-sessionNumber-taskname`

| Part | Meaning |
|------|---------|
| **YYYY-MM-DD** | Date the WIP was completed (all steps done). |
| **sessionNumber** | 1-based. Increments for each **session** completed that day. |
| **taskname** | Short, kebab-case name from the WIP tracker. |

**Examples:**
- `2026-02-05-1-merchant-filters-phased` — first session completed on 2026-02-05.
- `2026-02-05-2-currency-config-refactor` — second session the same day, a different WIP.

---

## Contents of a task folder

- **Tracker markdown** — the `*-track-name.md` from `wip/` at completion (steps, scope, decisions, session notes).
- **Progress JSON** — the `*-track-name-progress.json` with final `steps[].status` and `ac`.
- **AGENTS.md** — short summary of what shipped, pointers to the tracker and progress in this folder, and links to code/docs.

---

## References

- **`../skills/kanban-done-archive/SKILL.md`** — Archive and queue cleanup workflow.
- **`../wip/AGENTS.md`** — How to run a WIP (steps, progress JSON, completion workflow).
- **`../priorities/priorities.md`** — Current queue; Completed table.
- **`README.md`** — Project overview.
