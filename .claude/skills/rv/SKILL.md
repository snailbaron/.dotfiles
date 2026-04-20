---
name: rev
description: Do a code review of the changes in a repository.
---

1. Pick the branch to review against. For this, inspect the git log. There
   should be a remote-tracking branch several commits away from HEAD. It should
   not be the remote tracking branch of the current local one. Do not assume
   anything about the name of this base branch.
2. Once identified, print the name of the branch you are reviewing against. If
   you cannot identify the base branch, request additional information and do
   not proceed to the following steps.
3. Inspect both the code itself and the chain of commits.
4. Report any issues, starting with the most critical ones.
5. Do not modify the files.
6. Assume that the user might rebase and edit commits in-between the prompts.
   They might also have some local unstaged changes. You are always reviewing
   the code in the working directory; does not matter if it's unstaged, staged,
   or committed.
7. Do not complement the codebase if it's well structured. Do not specifically
   mention the things that are done well. Focus on the issues.
8. If you can find a PR attached to the changes, inspect it as well. Pay
   attention to any useful comments and concerns from the reviewers. If you
   cannot access the PR due to access restrictions, report it.
