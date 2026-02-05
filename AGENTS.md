# AGENTS.md — Kanban System

**Purpose:** The `kanban/` folder organizes project work into a structured workflow: priorities feed into WIP, and completed work moves to done.

---

## Folder Structure

```
kanban/
├── AGENTS.md              # This file — overview of the kanban system
├── priorities/            # Backlog and queue management
│   ├── agents.md          # How to use the priorities folder
│   ├── priorities.md     # Main priority queue (feeds from techfixes and polish)
│   ├── techfixes.md      # Technical issues and bugs backlog
│   └── polish.md         # Design and polish items backlog
├── wip/                   # Work-in-progress trackers
│   └── AGENTS.md          # How to implement WIP features
└── done/                  # Completed work archive
    └── AGENTS.md          # How to archive completed work
```

---

## Workflow

### 1. **Priorities** (`priorities/`)
- **`techfixes.md`** — Technical issues, bugs, and infrastructure problems
- **`polish.md`** — Design improvements, UX enhancements, and refinement tasks
- **`priorities.md`** — Main queue that aggregates items from techfixes and polish
- Items flow from techfixes/polish → priorities → wip → done

### 2. **WIP** (`wip/`)
- Active implementation trackers with phased steps
- Each tracker has clear acceptance criteria and progress tracking
- See `wip/AGENTS.md` for implementation guidelines

### 3. **Done** (`done/`)
- Archived completed work organized by completion date
- Each completed task gets its own dated folder with tracker, progress, and summary
- See `done/AGENTS.md` for archiving conventions

---

## Adding New Work

1. **Technical issues/bugs** → Add to `priorities/techfixes.md`
2. **Design/polish** → Add to `priorities/polish.md`
3. **Review priorities** → Check `priorities/priorities.md` for next items
4. **Start WIP** → Create tracker in `wip/` when ready to implement
5. **Complete** → Move to `done/` when all steps are finished

---

## References

- **`priorities/agents.md`** — How to manage the priorities folder
- **`wip/AGENTS.md`** — How to implement WIP features
- **`done/AGENTS.md`** — How to archive completed work
- **`README.md`** — Project overview
- **`LOCAL_TESTING.md`** — Local development and testing guide
