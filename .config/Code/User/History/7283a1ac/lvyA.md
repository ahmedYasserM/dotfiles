
# Git Internals

## Diff and Patch

- `git diff` $\to$ show the difference between `index` and `working directory`

- `git diff --cached` $\to$ show the difference between `HEAD` and `index`

- `git diff HEAD` $\to$ show the difference between `HEAD` and `working directory`

- `git diff <commit> <commit>` $\to$ show the difference between two commits

### Example

`git diff HEAD~1 HEAD` $\to$ show the difference between the  second last commit and the last commit

> NOTE
> `git diff HEAD`