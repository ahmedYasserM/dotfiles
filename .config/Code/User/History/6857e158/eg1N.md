# Understanding /etc/shadow file fields and format

> for details, [go](https://www.cyberciti.biz/faq/understanding-etcshadow-file/) here!

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

3. `Last password change (lastchanged)` - The date of the last password change, expressed as the number of days since `Jan 1, 1970 (Unix time)`. The `value 0` has a special meaning, which is that `the user should change her password the next time she will log in the system`. An `empty field` means that `password aging features are disabled`.

4. `Minimum` - The minimum number of days required between password changes i.e. `the number of days left before the user is allowed to change her password again`. An `empty field and value 0` mean that `there are no minimum password age`.

5. `Maximum` - The `maximum number of days the password is valid`, after that user is forced to change her password again.

6. `Warn` - The `number of days before password is to expire that user is warned` that his/her password must be changed

7. `Inactive` - The `number of days after password expires that account is disabled`.

8. `Expire` - The `date of expiration of the account`, expressed as `the number of days since Jan 1, 1970`.

- `!` means locked, `*` means no valid password (shouldn’t log in).

+ Historically you can lock any account in Linux by putting a ! mark before the password hash. The user will not be able to log in, but you can easily “unlock” it by removing the ! mark. (This is what passwd -l does)

+ From the manpage: `A password field which starts with an exclamation mark means that the password is locked. The remaining characters on the line represent the password field before the password was locked. […] If the password field contains some string that is not a valid result of crypt(3), for instance ! or *, the user will not be able to use a unix password to log in (but the user may log in the system by other means).`

You don’t have to use ! or *, other invalid characters like % would do the trick. The accounts having * passwd field are never intended to be normal login accounts, the ones with ! could be used, but locked by default. I’m not sure how modern distributions are honoring this tradition though.