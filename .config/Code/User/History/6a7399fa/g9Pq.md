# gzip vs bzip2

- gzip is `faster` than bzip2

- bzip2 has `higher compression ratio ` than gzip

## gzip command

- to compress file use $\to$ `gzip file_name`

- to uncompress file use $\to$ `gzip -d file_name.gz` or `gunzip file_name.gz`

## bzip2 command

- to compress file use $\to$ `bzip2 file_name`

- to uncompress file use $\to$ `bzip2 -d file_name.bz2` or `bunzip2 file_name.bz2`

## compression vs archiving

- `compression` is used to `reduce` the `size` of a file

- `archiving` is used to `combine` multiple files or directories into a `single` file. `(the size is not reduced)`

## tar command

- `tar` is used to `archive` files and directories

- `tar cf archive_name.tar file_name or directory_name` $\to$ `c` stands for `create` and `f` stands for `file`

- `tar xf archive_name.tar` $\to$ `x` stands for `extract`

- `tar cfz archive_name.tar.gz file_name or directory_name` $\to$ `z` stands for `gzip`

- `tar xfz archive_name.tar.gz` $\to$ `x` stands for `extract`

- `tar cfj archive_name.tar.bz2 file_name or directory_name` $\to$ `j` stands for `bzip2`

- `tar xfj archive_name.tar.bz2` $\to$ `x` stands for `extract`

- `tar tf archive_name.tar` $\to$ `t` stands for `list`

- `tar tfz archive_name.tar.gz` $\to$ `t` stands for `list`, `z` stands for `gzip`
f
- `tar tfj archive_name.tar.bz2` $\to$ `t` stands for `list`, `j` stands for `bzip2`

- `tar tfvz archive_name.tar.gz` $\to$ `t` stands for `list`, `v` stands for `verbose`, `z` stands for `gzip`

---

## du commanud

- `du` command is used to `display` the `disk usage` of a file or directory

- `du file_name` $\to$ `display` the `disk usage` of a `file` in `kilobytes`

- `du -h` $\to$ `h` stands for `human readable`

- `du -c` $\to$ `c` stands for `total`

- `du -sh` $\to$ `s` stands for `summary`

- `du -ah` $\to$ `a` stands for `all`
