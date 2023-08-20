# Understanding /etc/shadow file fields and format

- Basically, the `/etc/shadow` file stores secure user account information. All fields are separated by a colon `:` symbol. It contains one entry per line for each user listed in `/etc/passwd` file.

- As with the `/etc/passwd`, each field in the shadow file is also separated with `:` colon characters as follows:

1. `Username` - A valid account name, which exist on the system.

2. `Password` - Your encrypted password is in `hash format`. Usually password format is set to `$id$salt$hashed`, The `$id` is the `algorithm prefix` used On GNU/Linux as follows

   1. `$1$` is `MD5`
   2. `$2a$` is `Blowfish`
   3. `$2y$` is `Blowfish`
   4. `$5$` is `SHA-256`
   5. `$6$` is `SHA-512`
   6. `$y$` is `yescrypt`
