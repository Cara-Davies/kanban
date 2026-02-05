# agents.md — Priorities Management

**Purpose:** Guide for managing the priorities backlog and queue system.

---

## Folder Contents

The `priorities/` folder contains three markdown files that work together:

### 1. **`techfixes.md`**
- **Purpose:** Technical issues, bugs, infrastructure problems, and code quality improvements
- **When to add:** Any technical debt, bug reports, performance issues, or code refactoring needs
- **Format:** List items with brief descriptions, priority indicators, and context

### 2. **`polish.md`**
- **Purpose:** Design improvements, UX enhancements, visual refinements, and user-facing polish
- **When to add:** UI/UX improvements, design inconsistencies, accessibility enhancements, or user experience tweaks
- **Format:** List items with brief descriptions, priority indicators, and design context

### 3. **`priorities.md`**
- **Purpose:** Main priority queue that aggregates and prioritizes items from both techfixes and polish
- **When to update:** Regularly review techfixes and polish, then add high-priority items here
- **Format:** Organized list showing what to work on next, with references back to source files

---

## Workflow

### Adding New Items

1. **Identify the type:**
   - Technical issue/bug → Add to `techfixes.md`
   - Design/polish → Add to `polish.md`

2. **Format your entry:**
   - Brief, clear description
   - Priority level (if applicable)
   - Context or links to related issues/PRs
   - Estimated complexity (optional)

3. **Update priorities:**
   - Review `techfixes.md` and `polish.md` regularly
   - Move high-priority items to `priorities.md`
   - Remove items from source files when they're added to priorities

### Moving to WIP

1. **Select from priorities:**
   - Choose the next item from `priorities.md`
   - Remove it from the priorities list

2. **Create WIP tracker:**
   - Create a tracker file in `wip/` following the pattern in `wip/AGENTS.md`
   - Break down into steps with acceptance criteria

3. **Track progress:**
   - Update the WIP tracker as you work
   - Move to `done/` when complete

---

## Best Practices

- **Keep descriptions concise** — Enough context to understand, not a novel
- **Prioritize regularly** — Review and update `priorities.md` weekly or as needed
- **Cross-reference** — Link related items between files when relevant
- **Mark completed** — Remove items from source files when they're done or moved to WIP
- **Be specific** — "Fix login button styling" is better than "UI improvements"

---

## Example Entry Format

```markdown
## High Priority

- [ ] **Fix currency selector dropdown alignment** — Dropdown misaligns on mobile viewports
  - Source: `polish.md`
  - Related: Issue #123
  - Complexity: Low

## Medium Priority

- [ ] **Optimize merchant table rendering** — Performance degrades with 100+ merchants
  - Source: `techfixes.md`
  - Related: PR #456
  - Complexity: Medium
```

---

## References

- **`../AGENTS.md`** — Overview of the kanban system
- **`../wip/AGENTS.md`** — How to create and manage WIP trackers
- **`../done/AGENTS.md`** — How to archive completed work
