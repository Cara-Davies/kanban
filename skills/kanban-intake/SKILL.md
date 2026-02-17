---
name: kanban-intake
description: Use this skill when adding new work into the kanban system and deciding whether an item belongs in techfixes or polish.
---

# Kanban Intake Skill

## Purpose

Route new work into the correct backlog file with clear, actionable entries.

## When To Use

- A user asks to add a new task to the board.
- You are triaging raw ideas, bugs, or UX requests.
- You need to classify work before prioritization.

## Workflow

1. Classify work type:
   - Technical, bug, infrastructure, refactor -> `priorities/techfixes.md`
   - UX, design, accessibility, visual refinement -> `priorities/polish.md`
2. Add the item under the right priority section (`High`, `Medium`, `Low`).
3. Use a concise entry with:
   - Checkbox status
   - Clear title
   - One short context line
   - Source pointer to task tracker when applicable
4. Avoid adding directly to `priorities/priorities.md` until prioritization.

## Entry Template

```markdown
- [ ] **<task title>**
  - <short context>
  - Source: Task `.N` in `TASKS.md`
```

## Quality Rules

- Be specific and testable.
- Keep entries small enough to move into WIP in one focused effort.
- If the request combines technical and polish concerns, split it into separate items.
