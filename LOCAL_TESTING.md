# Local Testing Guide

This file defines the minimum testing contract each new repo should adopt when bootstrapped from this template.

## Required Commands

Every project should define these commands (or equivalents):

- `test` runs the full automated test suite
- `test:watch` runs tests in watch mode for local TDD loops
- `lint` runs static checks
- `typecheck` runs static type checks (when applicable)

## Test-Driven Loop (Required)

For each WIP step:

1. Write or update a failing test that represents the acceptance criteria.
2. Run tests and confirm failure.
3. Implement the minimum change to pass.
4. Run `test` and relevant quality checks (`lint`, `typecheck`).
5. Refactor while keeping tests green.

## WIP Verification Notes

Each completed WIP step should record:

- Commands run (for example: `npm test`, `pytest -q`, `go test ./...`)
- Result summary (pass/fail and key evidence)
- Any intentionally deferred checks with rationale
