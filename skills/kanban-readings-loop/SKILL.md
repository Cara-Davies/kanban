---
name: kanban-readings-loop
description: Use this skill when turning newly consumed context into improvements for repo skills and workflow docs through a structured readings loop.
---

# Kanban Readings Loop Skill

## Purpose

Continuously improve the template from external learnings with traceable decisions.

## When To Use

- User shares new reading/context and wants it integrated.
- Running periodic process improvement on this repo.
- Updating skills based on new best practices.

## Workflow

1. Capture:
   - Add raw notes to `readings/inbox/YYYY-MM-DD-topic.md`.
2. Synthesize:
   - Create `readings/syntheses/YYYY-MM-DD-topic-synthesis.md`.
   - List actionable takeaways and confidence.
3. Propose:
   - Add entries to `readings/skill-deltas.md` for each proposed change.
4. Decide:
   - Add a decision entry in `readings/decision-log.md`.
   - Mark each proposal accepted/rejected.
5. Apply:
   - Implement accepted updates in `skills/` and relevant docs.
   - Reference changed files in the decision entry.

## Quality Rules

- Prefer small, reversible changes.
- Keep one decision per concrete change set.
- Do not update skills without a linked delta and decision log entry.
