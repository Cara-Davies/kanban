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
- `skills/` reusable Codex skills for common project workflows
- `TASKS.md` ordered improvement roadmap for this template

## New Repo Bootstrap

1. Copy `priorities/`, `wip/`, `done/`, `templates/`, and `skills/` into your new repo.
2. Start backlog capture in `priorities/techfixes.md` and `priorities/polish.md`.
3. Move one item into `priorities/priorities.md`, create a WIP tracker, and execute it.
4. Follow `LOCAL_TESTING.md` and `templates/testing/TDD_WORKFLOW.md` from the first feature.

## Testing Standard

- All implementation tasks should follow red-green-refactor.
- Acceptance criteria in WIP must map to tests or verifiable checks.
- Every WIP step should include the command(s) used for verification.

## Skills

- `skills/commit-quality/SKILL.md` standardizes commit quality checks and commit message format.
- `skills/kanban-intake/SKILL.md` standardizes routing new work into `techfixes` or `polish`.
- `skills/kanban-prioritize/SKILL.md` standardizes curation of `priorities/priorities.md`.
- `skills/kanban-wip-execution/SKILL.md` standardizes phased implementation and AC verification.
- `skills/kanban-done-archive/SKILL.md` standardizes completion cleanup and archival.
