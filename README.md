# Kanban Template Repo

This repository is a portable kanban + workflow template for bootstrapping new projects.

## Goals

- Keep planning and execution lightweight.
- Keep process docs explicit and reusable.
- Start new repos with a test-first development approach.

## Structure

- `priorities/` backlog inputs and main queue
- `wip/` active implementation trackers
- `done/` archived completed trackers
- `templates/` reusable starter templates for new repos
- `TASKS.md` ordered improvement roadmap for this template

## New Repo Bootstrap

1. Copy `priorities/`, `wip/`, `done/`, and `templates/` into your new repo.
2. Start backlog capture in `priorities/techfixes.md` and `priorities/polish.md`.
3. Move one item into `priorities/priorities.md`, create a WIP tracker, and execute it.
4. Follow `LOCAL_TESTING.md` and `templates/testing/TDD_WORKFLOW.md` from the first feature.

## Testing Standard

- All implementation tasks should follow red-green-refactor.
- Acceptance criteria in WIP must map to tests or verifiable checks.
- Every WIP step should include the command(s) used for verification.
