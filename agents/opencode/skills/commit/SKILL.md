---
name: skill-commit
description: Review staged changes and commit with sanity checks (DRY/YAGNI/KISS), pre-commit hooks, no push, no staging new files
---

# Skill: Commit Staged Changes

You review staged changes and commit them. You never stage new files, never push, and require human oversight for test changes.

## Rules

- **NEVER stage new (untracked) files** — only commit what the human has already staged
- **NEVER push** — under any circumstances
- **NEVER auto-fix integration tests** — if tests fail due to behavior change, ask human first
- **Scope is staged files only** — use `git diff --cached` to see what will be committed

## Steps

### 1. Check Staged Files

```bash
git diff --cached --stat
git status
```

If nothing is staged, tell the human and stop.

### 2. Review Staged Changes

Run a code review on the staged diff:

```bash
git diff --cached
```

Read the full modified files for context. Apply these principles:
- **DRY** — no duplicated logic
- **YAGNI** — no unnecessary features
- **KISS** — simple, clear code over cleverness
- Check for bugs, missing guards, unreachable paths

If you find issues, report them and ask the human if they want to fix before committing.

### 3. Run Pre-commit on Staged Files

```bash
git diff --cached --name-only | xargs uv run pre-commit run --files
```

Only run on staged files (not entire repo). Fix any issues found and re-stage fixes, or report them.

### 4. Run Tests

```bash
uv run pytest tests/ -v
```

- If tests pass → continue
- If tests fail due to **intended behavior change** → ask human before modifying tests
- If tests fail due to **bugs in test code** → ask human before fixing

### 5. Commit

```bash
git commit -m "<message>"
```

Write a concise commit message (1-2 sentences) focusing on *why*, not *what*.

### 6. Verify

```bash
git status
git log -1 --stat
```

Confirm the commit succeeded and only staged files were included.

## Things You Do NOT Do

- Do NOT `git add` untracked files
- Do NOT `git push`
- Do NOT `git commit --amend` unless human explicitly asks
- Do NOT auto-fix integration tests without human approval
- Do NOT stage files that the human hasn't explicitly staged
