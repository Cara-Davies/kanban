# AGENTS.md — WIP Implementation

Guidance for implementing work-in-progress (WIP) features in this folder. **Use together with the project root docs** for coding conventions, tech stack, and workflows.

**Skill-first operation:** prefer `../skills/kanban-wip-execution/SKILL.md` for execution workflow, and use this file as local detail.

---

## Purpose

- **`wip/`** holds phased implementation trackers: one feature per tracker, with clear steps and acceptance criteria.
- Each step is designed to be **one context window**: small, testable, and completable before moving on.

---

## WIP File Pattern

### 1. Tracker Markdown (`*-track-name.md`)

- **Progress** — Short table or pointer to the progress JSON. Update when a step is done.
- **Scope** — In-scope vs out-of-scope for this WIP.
- **Decisions** — Chosen approach so later steps stay consistent.
- **Steps** — Numbered steps (0, 1, 2, …). Each has:
  - **Goal** — One sentence.
  - **Tasks** — Ordered list of what to do.
  - **Acceptance criteria** — Checkbox list with **AC IDs** (`ac{step}-{index}`) so they match the progress JSON.
- **Session notes** — Date and what was done when a step is completed.

### 2. Progress JSON (`*-track-name-progress.json`)

When a WIP uses machine-readable progress:

- **`updatedAt`** — ISO date or timestamp of last change.
- **`steps`** — Array of `{ id, name, status, ac }`:
  - `id`: step number as string (`"0"`, `"1"`, …).
  - `name`: short label.
  - `status`: `"pending"` | `"in_progress"` | `"done"`.
  - `ac`: array of booleans, one per acceptance criterion; order matches the AC IDs in the tracker.

**When to update:**

- At **start** of a step: set `status` to `"in_progress"`.
- As each AC is met: set the corresponding `ac[j]` to `true`.
- When **all** AC for a step are met: set `status` to `"done"`.

---

## How to Implement a Step

1. **Read the step** — Goal, Tasks, and Acceptance criteria in the tracker.
2. **Set progress** — In the progress JSON, set that step's `status` to `"in_progress"` (if the JSON exists).
3. **Work** — Do only what the Tasks and AC describe. Don't expand scope.
4. **Verify** — Confirm each AC: run the app, tests, or checks as needed.
5. **Update progress** — Set `ac[j]` to `true` for each satisfied AC, then `status` to `"done"` when all are true.
6. **Session notes** — In the tracker, add the date and a short note (e.g. "Step 1 done: schema updated").
7. **Commit message** — When the step is done, provide a commit message following the structure used in previous commits:
   - **Subject:** `type(scope): short imperative summary`
   - **Body (optional):** bullet list of changes. The user will manually review and commit.

8. **Next step: same chat or new?** — After the step is done, suggest whether to do the **next step** in this chat or start a new one:
   - **Continue here** if the thread is still short and the next step is small.
   - **Start a new chat** if the thread is long or the next step is heavy.

---

## When All WIP Tasks Are Done

When **every step** in a WIP tracker is complete:

1. **Update `priorities/priorities.md`**
   - **Remove** the item from the "Up Next" list.
   - **Add** a row to the "Completed" table: `| Item | YYYY-MM-DD | Notes |`.
   - Optionally add a **Session notes** entry with what was shipped.

2. **Update the relevant queuing file**
   - Use the tracker's **Source:** line to find the source file (`techfixes.md` or `polish.md`).
   - **Remove** the matching item from that file.

3. **Other docs**
   - If the work changes project structure, update `README.md` and `LOCAL_TESTING.md` as per project rules.

4. **Move execution files to `done/`**
   - Create `done/YYYY-MM-DD-N-taskname/` (date = completion day, N = session number for that day, taskname = kebab from the tracker).
   - **Move** the tracker `*.md` and `*-progress.json` from `wip/` into that folder.
   - Create **`AGENTS.md`** in that task folder (summary of what shipped, key files, pointers to the tracker and progress).

---

## Rules for Stability

- **One step per context** — Finish the step and its AC before starting the next.
- **Stick to scope** — If something is "out of scope" or "deferred," do not implement it in this WIP.
- **Follow decisions** — Storage, naming, and behavior in the "Decisions" section override ad hoc choices.
- **AC = completion** — A step is only done when every AC is satisfied.
- **Docs** — When a step changes project structure, update `README.md` and `LOCAL_TESTING.md`.

---

## Adding a New WIP

1. Create a tracker `{feature}-{short-name}.md` in `wip/` with Progress, Scope, Decisions, Steps (with AC IDs), and Session notes.
2. If you want machine-readable progress, add `{feature}-{short-name}-progress.json` with `updatedAt` and `steps`.
3. In `README.md` and `LOCAL_TESTING.md`, add links to the new tracker if relevant.

---

## Project References

- **`README.md`** — Project overview and setup.
- **`LOCAL_TESTING.md`** — How to run and test locally.
- **`../skills/kanban-wip-execution/SKILL.md`** — WIP tracker execution workflow.
- **`../priorities/AGENTS.md`** — How to manage the priorities folder.
- **`../done/AGENTS.md`** — Done folder layout and naming conventions.
