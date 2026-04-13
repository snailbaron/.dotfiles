---
name: rev
description: Do a code review of the changes in a repository.
---

Do a code review of the changes on top of the base branch. In most cases the
base branch will be named `main` or `master`, but may also have other names,
e.g. `develop`.

1. Inspect both the code itself and the chain of commits.
2. Report any issues, starting with the most critical ones.
3. Do not modify the files.
4. Assume that the user might rebase and edit commits in-between the prompts.
   They might also have some local unstaged changes.
