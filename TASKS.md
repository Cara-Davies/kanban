# Tasks

Purpose: ordered implementation plan for improving this repo as a reusable template.

## Status Key

- `[ ]` pending
- `[~]` in progress
- `[x]` complete

## Task Queue

- [x] **Task .1 — Test-Driven Foundation**
  - Define a test-first workflow for all new repos based on this template
  - Add documentation and starter test scaffolds/templates
  - Done when: a new project can follow a clear red-green-refactor workflow from day 1

- [x] **Task .2 — Commit Skill**
  - Create a reusable skill for commit quality gates and commit message generation
  - Include: commit format, pre-commit checks, and output expectations
  - Done when: commit workflow is consistent and portable across projects

- [x] **Task .3 — Convert AGENTS to Skills**
  - Convert root and folder-level AGENTS instructions into reusable skills
  - Keep repo-level docs minimal and point to skills where appropriate
  - Done when: workflow can be ported by installing/copying skills instead of rewriting docs

- [x] **Task .4 — Readings and Self-Improvement Loop**
  - Add a section/process for capturing recent readings and extracting actionable updates
  - Feed accepted changes into skills/process docs with a short decision log
  - Done when: new learnings can be regularly reviewed and applied with traceability

## Iteration Rule

Work tasks in order (`.1`, `.2`, `.3`, `.4`). Do not start the next task until the current one has clear completion notes.

## Completion Notes

- **Task .1 (completed):**
  - Added `/README.md` with bootstrap flow and testing standard.
  - Added `/LOCAL_TESTING.md` with required commands and TDD loop.
  - Added `/templates/testing/TDD_WORKFLOW.md` and `/templates/testing/TEST_CASE_TEMPLATE.md`.
- **Task .2 (completed):**
  - Added `/skills/commit-quality/SKILL.md`.
  - Defined commit workflow, pre-commit quality gates, commit message format, and output expectations.
  - Linked the skill from `/README.md`.
- **Task .3 (completed):**
  - Added `/skills/kanban-intake/SKILL.md`.
  - Added `/skills/kanban-prioritize/SKILL.md`.
  - Added `/skills/kanban-wip-execution/SKILL.md`.
  - Added `/skills/kanban-done-archive/SKILL.md`.
  - Updated AGENTS files to skill-first guidance and normalized `priorities/AGENTS.md`.
- **Task .4 (completed):**
  - Added readings loop structure under `/readings/`.
  - Added `/skills/kanban-readings-loop/SKILL.md`.
  - Added `skill-deltas` and `decision-log` docs for traceable self-improvement.
