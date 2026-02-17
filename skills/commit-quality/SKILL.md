---
name: commit-quality
description: Use this skill when the user asks to prepare commits, improve commit messages, or enforce pre-commit quality checks before creating a commit.
---

# Commit Quality Skill

## Purpose

Create clear, reviewable commits with consistent messages and minimum quality gates.

## When To Use

- User asks to commit changes.
- User asks for commit message suggestions.
- User asks to check if changes are ready to commit.

## Workflow

1. Inspect change scope.
2. Group changes into one logical commit (or propose split commits if unrelated).
3. Run pre-commit quality checks that exist in the repository.
4. Build a Conventional Commit message.
5. Add co-author trailers using `COMMIT_ATTRIBUTION.md` when applicable.
6. Commit only when explicitly requested.

## 1) Inspect Change Scope

Run:

- `git status --short`
- `git diff --stat`
- `git diff` (and `git diff --staged` when staged changes exist)

Confirm the files match one coherent intent. If not, propose a split plan.

## 2) Pre-Commit Quality Gates

Run only relevant commands found in the project:

- JavaScript/TypeScript: `npm test`, `npm run lint`, `npm run typecheck`
- Python: `pytest`, `ruff check .`, `mypy .`
- Go: `go test ./...`, `go vet ./...`
- Rust: `cargo test`, `cargo clippy -- -D warnings`

If a command is missing, skip it and state that it was unavailable.
If checks fail, do not commit until the user asks to continue anyway.

## 3) Commit Message Format

Use:

`type(scope): short imperative summary`

Allowed `type` values:

- `feat` new user-facing functionality
- `fix` bug fix
- `docs` documentation only
- `refactor` internal code restructuring without behavior change
- `test` test-only change
- `chore` maintenance, tooling, or config

Body (optional) should be short bullets describing what changed and why.

## 4) Output Expectations

Before committing, provide:

- Scope summary (what is included)
- Checks run (pass/fail/skip)
- Proposed commit message

After committing, provide:

- Commit hash
- Commit subject
- Files included
- Co-author trailers used

## 5) Safety Rules

- Do not include unrelated changes in the same commit.
- Do not amend or force-push unless explicitly requested.
- Do not bypass failing checks without explicit user approval.
