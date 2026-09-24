---
name: bram-create-commits
description: "Bram's personal commit-message convention. Use whenever writing a git commit message, in any repo, with any tool. Titles are a single imperative, sentence-case line with no body and no conventional-commit prefix."
---

## Commit message convention

- One line: imperative mood, sentence case (e.g. "Drop the keys page and revoke the pool key").
- No body / description under the title.
- No conventional-commit prefixes (`feat:`, `fix:`, `chore:`, etc.).
- Trailers are fine (e.g. `Co-Authored-By: ...`) — they don't count as a body.

This matches the existing style across Bram's repos (tornmanager, malaguena, dotfiles).

Repo-level convention wins: if the repo's own `CLAUDE.md`/`AGENTS.md` or `CONTRIBUTING` guide explicitly asks for something else (e.g. Conventional Commits for changelog generation), follow that instead.
