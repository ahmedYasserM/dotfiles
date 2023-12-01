
# Git Internals

## Diff and Patch

### Generate a patch

- `git diff` $\to$ show the difference between `index` and `working directory`

- `git diff -- <file>` $\to$ show the difference between `index` and `working directory` for a `specific file`

- `git diff --cached` $\to$ show the difference between `HEAD` and `index`

- `git diff HEAD` $\to$ show the difference between `HEAD` and `working directory`

- `git diff <commit> <commit>` $\to$ show the difference between two commits

- `git diff --no-index <file> <file>` $\to$ show the difference between two files that are not in the index

#### Example

`git diff HEAD~1 HEAD` $\to$ show the difference between the  second last commit and the last commit

> NOTE
>
> `git diff HEAD~1 HEAD` is equivalent to `git show`

## Apply a patch

- `git apply <patch>` $\to$ apply a patch to the `working directory`
