# gzip vs bzip2

- gzip is `faster` than bzip2

- bzip2 has `higher compression ratio ` than gzip

## gzip

- to compress file use $\to$ `gzip file_name`

- to uncompress file use $\to$ `gzip -d file_name.gz` or `gunzip file_name.gz`

## bzip2

- to compress file use $\to$ `bzip2 file_name`

- to uncompress file use $\to$ `bzip2 -d file_name.bz2` or `bunzip2 file_name.bz2`

## compression vs archiving

- `compression` is used to `reduce` the `size` of a file

- `archiving` is used to `combine` multiple files or directories into a `single` file. `(the size is not reduced)`

## du command

- `du` command is used to `display` the `disk usage` of a file or directory

- `du -h` $\to$ `h` stands for `human readable`

- `du -sh` $\to$ `s` stands for `summary`

- `du -ah` $\to$ `a` stands for `all`

- `du -ah | sort -n` $\to$ `sort` the output of `du` command by `numerical value`