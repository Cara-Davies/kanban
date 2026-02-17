#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

echo "Resetting template history and board state for a new project..."

# Remove template-maintainer history.
rm -rf meta

# Clear task iteration doc from repo root if present.
rm -f TASKS.md

# Remove archived done iterations but keep done conventions.
find done -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} +

# Remove active WIP trackers but keep folder conventions.
find wip -mindepth 1 -type f ! -name AGENTS.md -delete
find wip -mindepth 1 -type d -exec rm -rf {} +

# Reset queue files to a clean starter state.
cat > priorities/priorities.md <<'EOF'
# Priorities

**Purpose:** Main priority queue aggregating items from `techfixes.md` and `polish.md`.

---

## Up Next

_Items ready to be moved to WIP. Review `techfixes.md` and `polish.md` to populate this list._

---

## Completed

| Item | Date | Notes |
|------|------|-------|
|      |      |       |

---

## Notes

- This file feeds from `techfixes.md` (technical issues and bugs) and `polish.md` (design and polish items)
- Regularly review source files and move high-priority items here
- Remove items from this list when they're moved to `wip/` for implementation
EOF

cat > priorities/techfixes.md <<'EOF'
# Techfixes

**Purpose:** Technical issues, bugs, infrastructure problems, and code quality improvements.

---

## High Priority

---

## Medium Priority

---

## Low Priority

---

## Notes

- Add technical issues, bugs, performance problems, and code refactoring needs here
- When ready to work on an item, move it to `priorities.md` and then create a WIP tracker
- Remove items when they're completed or moved to priorities
EOF

cat > priorities/polish.md <<'EOF'
# Polish

**Purpose:** Design improvements, UX enhancements, visual refinements, and user-facing polish.

---

## High Priority

---

## Medium Priority

---

## Low Priority

---

## Notes

- Add design improvements, UX enhancements, visual refinements, and accessibility improvements here
- When ready to work on an item, move it to `priorities.md` and then create a WIP tracker
- Remove items when they're completed or moved to priorities
EOF

# Keep readings structure but clear reusable logs.
cat > readings/skill-deltas.md <<'EOF'
# Skill Deltas

Track proposed and accepted updates to skills based on recent readings.

## Template

- Date:
- Source reading:
- Proposed change:
- Target skill/file:
- Impact:
- Status: `proposed` | `accepted` | `rejected`
- Linked decision: `decision-log.md#<heading>`

## Entries

<!-- Add newest entries at the top -->
EOF

cat > readings/decision-log.md <<'EOF'
# Readings Decision Log

Record decisions made from readings-driven improvements.

## Template

### YYYY-MM-DD - <decision title>

- Status: `accepted` | `rejected`
- Context:
- Decision:
- Rationale:
- Follow-up changes:

## Decisions

<!-- Add newest decisions at the top -->
EOF

echo "Reset complete."
echo "Next: add your project-specific backlog items in priorities/techfixes.md and priorities/polish.md."
