---
name: kanban-done-archive
description: Use this skill when a WIP tracker is fully complete and needs to be archived in done with queue/documentation cleanup.
---

# Kanban Done Archive Skill

## Purpose

Archive completed WIP work in a consistent, auditable structure and clean queue references.

## When To Use

- All WIP steps and AC are complete.
- Closing a task and moving artifacts to `done/`.

## Workflow

1. Confirm completion:
   - All tracker steps complete
   - All AC satisfied
   - Final verification checks recorded
2. Update queues:
   - Remove item from `priorities/priorities.md` `Up Next`
   - Add row to `Completed` table with date and notes
   - Remove corresponding source item from `techfixes.md` or `polish.md`
3. Archive files:
   - Create `done/YYYY-MM-DD-N-taskname/`
   - Move tracker and progress JSON from `wip/` into the folder
   - Add task-level `AGENTS.md` summary
4. Update top-level docs when project structure/workflow changed.

## Naming Rules

- Folder pattern: `YYYY-MM-DD-N-taskname`
- `N` is 1-based completion session count for the day.
- `taskname` is short kebab-case derived from tracker name.

## Safety Rules

- Do not archive partially completed trackers.
- Keep archive contents immutable except for factual corrections.
