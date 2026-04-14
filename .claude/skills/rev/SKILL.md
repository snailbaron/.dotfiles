---
name: rev
description: Do a code review of the changes in a repository.
---

Do a code review of the changes on top of the base branch. In most cases the
base branch will be named `main` or `master`, but may also have other names,
e.g. `develop`.

1. Print the name of the branch you are reviewing against right away. If you
   cannot identify the base branch, request additional information and do not
   proceed to the following steps.
2. Inspect both the code itself and the chain of commits.
3. Report any issues, starting with the most critical ones.
4. Do not modify the files.
5. Assume that the user might rebase and edit commits in-between the prompts.
   They might also have some local unstaged changes.
6. Do not complement the codebase if it's well structured. Do not specifically
   mention the things that are done well. Focus on the issues.
