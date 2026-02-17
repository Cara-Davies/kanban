---
name: kanban-wip-execution
description: Use this skill when creating or executing WIP trackers with phased steps, acceptance criteria, and progress updates.
---

# Kanban WIP Execution Skill

## Purpose

Execute one WIP step at a time with explicit acceptance criteria and verification evidence.

## When To Use

- Creating a new tracker in `wip/`.
- Implementing a step from an existing tracker.
- Updating progress JSON and session notes.

## Workflow

1. Create tracker file in `wip/` with:
   - Progress
   - Scope
   - Decisions
   - Numbered steps
   - Acceptance criteria IDs (`ac{step}-{index}`)
   - Session notes
2. If needed, add progress JSON with:
   - `updatedAt`
   - `steps[]` containing `id`, `name`, `status`, `ac`
3. Execute exactly one step:
   - Set step `status` to `in_progress`
   - Implement only in-scope tasks
   - Verify each AC with tests/checks
   - Mark AC booleans `true`
   - Set step `status` to `done` when all AC pass
4. Add dated session note with result summary.

## Required Quality Gates

- Follow test-first workflow from `LOCAL_TESTING.md`.
- Record verification commands and outcomes.
- Do not start the next step until current step AC is complete.

## Handoff Guidance

After finishing a step, suggest:
- Continue in same chat for small next steps.
- New chat for heavy or long-running next steps.
