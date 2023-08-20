# Users and Groups

## Users

- users' data is at $\to$ `/etc/passwd`

- users' passwords is at $\to$ `/etc/shadow`

- `!` in `/etc/shadow` means that the `password is not set yet`

- you can delete user using `userdel <username>`

- when you delete a user using `userdel` his primary group will be deleted **if its primary group share the same name of the user**

- to delete the user's home `directory` and `mail spool` you should use `userdel -r <username>`

- you can add user to a group as a `secondary group` using `usermod -a -G <groupname> <username>`

- if you did not use `-a` option, the user `will be removed` from all other secondary groups

- you can add user to a group as a `primary group` using `usermod -g <groupname> <username>`

- a user can't login to the system if it hasn't a `password`

- `usermod -L <username>` $\to$ Lock a user's password. This puts a `!` in front of the encrypted password, effectively disabling the password. You can't use this option with `-p` or `-U`.

- if you want to renable the user's password you can use `usermod -U <username>`

- to lock user account you can also use `passwd -l <username>`

- to unlock user account you can also use `passwd -u <username>`

## Groups

- groups' data is at $\to$ `/etc/group`

- groups' passwords is at $\to$ `/etc/gshadow`

- `!` in `/etc/gshadow` means that the `password is not set yet`

- you can delete a group using `groupdel <groupname>`

- you can not delete a group if it is a `primary group` for a user, because he will left wihout a primary group

- you can delete a group even if there is a user that has this group as a `secondary group`
