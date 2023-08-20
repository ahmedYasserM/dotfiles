# Users and Groups

## Users

- users' data is at $\to$ `/etc/passwd`

- users' passwords is at $\to$ `/etc/shadow`

- `!` in `/etc/shadow` means that the `password is not set yet`

- when you delete a user using `userdel` his primary group will be deleted **if its primary group share the same name of the user**

- to delete the user's home `directory` and  `mail spool` you should use `userdel -r <username>`


## Groups

- groups' data is at $\to$ `/etc/group`

- groups' passwords is at $\to$ `/etc/gshadow`

- `!` in `/etc/gshadow` means that the `password is not set yet`
