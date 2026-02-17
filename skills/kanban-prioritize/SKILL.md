---
name: kanban-prioritize
description: Use this skill when curating the main priority queue from techfixes and polish and deciding what moves into WIP next.
---

# Kanban Prioritize Skill

## Purpose

Maintain `priorities/priorities.md` as the single source for near-term execution.

## When To Use

- Updating `priorities/priorities.md`.
- Selecting the next item for implementation.
- Recording completed tasks in the priorities board.

## Workflow

1. Review candidate items from:
   - `priorities/techfixes.md`
   - `priorities/polish.md`
2. Add top items to `priorities/priorities.md` under `Up Next` with:
   - Source file
   - Expected outcome
3. When work starts in WIP, remove it from `Up Next`.
4. When completed, append to `Completed` table with:
   - Item
   - Date (`YYYY-MM-DD`)
   - Short notes

## Prioritization Heuristics

- Prefer unblockers over optimizations.
- Prefer high-impact, low-risk work.
- Keep WIP limited; queue only a few clear next items.

## Consistency Rules

- Every `Up Next` item should map back to a source backlog item.
- Do not leave orphaned items in `techfixes.md` or `polish.md` once shipped.
