# Shell Scripting

## Running a Shell Script

There are a few different ways we can run shell scripts.

__The first is to run a shell program and pass the script as a parameter.__
Here's another example of how we could run the script we created:

```
bash ~/scripts/common.v1.sh
```

This is a perfectly valid technique. Now let's see the other ways we can run a script.

__The next way we can run a script is to make it 'executable'.__ This means we change the file permissions of the script file, adding the 'executable bit'. This tells the systems we can run the file. 

```
chmod +x ~/scripts/common.v1.sh
```

If the `chmod` command looks unfamiliar then check the [Understanding Commands](../../02-core-skills/10-understanding-commands/index.md) chapter. Now that the file has been made executable, we can simply enter the path to the file and run it, as if it was any other command:

```
~/scripts/common.v1.sh
```

There is a problem with this approach though. How this file is executed is going to vary depending on how your system is set up[^2]. For example, if you are using Bash, then the script will run in a new instance of the Bash shell. However, if you are using the Z shell, then the script will most likely run in the `sh` program (and depending on your system, this program might just be a link to _another_ type of shell).

We want to avoid any ambiguity and be explicit about _what_ program should run our script. We can do this using a special construct called a _shebang_.

## Using Shebangs

A _shebang_ is a special set of symbols at the beginning of a file that tells the system what program should be used to run the file.

If we were to add a shebang to our `common.v1.sh` file, it would look like this:

```bash
#!/usr/bin/sh

# Write the title of our command.
echo "common commands:"

# Show the most commonly used commands.
tail ~/.bash_history -n 1000 | sort | uniq -c | sed 's/^ *//' | sort -n -r | head -n 10
```

The shebang is the two characters - `#!`. The name 'shebang' comes from the names of the symbols. The first symbol is a 'sharp' symbol (sometimes it is called a hash, it depends a little on context). The second symbol is an exclamation point. In programming the exclamation point is sometimes called the 'bang' symbol. When we put the two together, we get 'sharp bang', which is shortened to 'shebang'.

Immediately after the shebang you write the full path to the program which should be used to open the file.

For example, if you wanted to write a script that is run in Python, you could do this:

```python
#!/usr/bin/python3

print('Hello from Python')
```

If we wanted to explicitly use the Bash shell to run a script, we might use a shebang like this:

```bash
#!/usr/bin/bash

echo "Hello from Bash"
```

What about Node.js? Easy!

```js
#!/usr/bin/node

console.log("Hello from Node.js");
```

### Shebangs - Dealing with Paths

When we use a shebang we need to provide the full path to the executable that runs the script.

For example, if we want to use Ruby to run a script we could write a script like this:

```ruby
#!/usr/bin/ruby

puts 'Hello from Ruby'
```

But there is a problem here. This will only work if you have the Ruby program installed in the location specified after the shebang (i.e. `/usr/bin/ruby`). If you do not have the Ruby program in this location the script will fail to run.

How can we know where a specific program is installed?

There is a common trick for dealing with this issue. We can use the `env` (_set environment and execute command_) command to run a command and it will work out the path for us.

The `env` command is often used to show environment variables, but you can also use it to execute an arbitrary command (often with a modified environment). One handy feature of the `env` command is that it looks through the `$PATH` variable to find the path of the command to execute.

You can see this by running a command like the below:

```
$ env python3
Python 3.8.5 (default, Jan 27 2021, 15:41:15)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

We've used the `env` command to run the `python3` command - and it worked out the correct path for us.

To use `env` in a shebang, specify the full path to `env` (which should be the same on all Unix-like systems) and then provide the name of the command to run:

```
#!/usr/bin/env bash

echo "Hello from Bash"
```

Or another example:

```
#!/usr/bin/env ruby

puts 'Hello from Ruby'
```

Using a shebang to specify the exact command to run, and then using the `env` command to allow the `$PATH` to be searched is generally the safest and most portable way to specify how a shell script should run.

## Sourcing Shell Scripts

We have discussed how to _run_ shell scripts. You can also use the _source_ (_execute commands from a file_) command<!--index--> to load the contents of a file into the _current_ shell.

Remember that when we run a shell script, a new shell is created as a child process of the current shell. This means that if you change something in the environment, such as a variable, it will not affect the environment of the shell that ran the script.

Let's see an example. We'll create a script called _set_editor.sh_ that sets the `EDITOR` environment variable to `nano`. The script's contents are below (can also find it in the samples at _~/effective-shell/scripts/set_editor.sh_):

```bash
EDITOR=nano
echo "Editor changed to: $EDITOR"
```

Let's run this script and see what editor looks like before and after:

```
$ echo $EDITOR
vim
$ ~/effective-shell/scripts/set_editor.sh
Editor changed to: nano
$ echo $EDITOR
vim
```

Notice that although we changed the `EDITOR` environment variable in our script, the change has not persisted in the current shell. This is because each shell (and in fact, each process) gets its own _copy_ of the environment.

If we want to run the commands in the file in the context of the current shell, we can use the `source` command to load the file:

```
$ echo $EDITOR
vim
$ source ~/effective-shell/scripts/set_editor.sh
Editor changed to: nano
$ echo $EDITOR
nano
```

Our existing environment has been changed. When we use `source`, the commands in the file are executed in the current shell, rather than in a new shell.

We can see this even more clearly if we use the _showpstree.sh_ file:

```
$ ~/effective-shell/scripts/show-info.sh
bash
  └─sh /home/ubuntu/effective-shell/scripts/showpstree.sh
    └─pstree -l -a -s 2240
```

This script shows the current 'process tree', using the `pstree` (_show process tree_) command. We can see that the `pstree` command was run as a child of the `sh` program. This program was run with the script path, by the shell I was using, `bash`. This is a nice visualisation of what is going on - our `bash` shell has run the _showpstree.sh_ script in a child shell.

If we source the same file, we'll see that we do _not_ create a new shell:

```
$ source ~/effective-shell/scripts/show-info.sh
bash
  └─pstree -l -a -s 2169
```

### Dot Sourcing<!--index-->

There is a slightly more concise syntax to source a script - the _dot sourcing_ notation. When the shell sees a `.` dot character, it will source the file that follows:

```
$ . ~/effective-shell/scripts/show-info.sh
bash
  └─pstree -l -a -s 2169
```

You may encounter this syntax as you look at things like shell configuration files, which we will discuss in [Chapter 24 - Configuring the Shell](../../part-5-building-your-toolkit/configuring-the-shell).

## Installing Your Script

Before we finish with our shell script fundamentals, we'll take a look at one final commonly used pattern to run shell scripts - installing them as a local binary.

Our `common.v1.sh` script (with the added shebang) looks like this:

```bash
#!/usr/bin/env sh

# Write the title of our command.
echo "common commands:"

# Show the most commonly used commands.
tail ~/.bash_history -n 1000 | sort | uniq -c | sed 's/^ *//' | sort -n -r | head -n 10
```

If we have made the script executable with the `chmod` command, then we can run the script by simply typing the location of the script in the shell:

```
$ ~/scripts/common.v1.sh
common commands:
97 gcm
96 gpr
...
```

If we want to 'install' this script as a local command which we can run easily, we can create a _symbolic link_ to the shell script in our `/usr/local/bin` folder:

```
ln -s ~/scripts/common.v1.sh /usr/local/bin/common
```

The `ln` (_create link_) command creates a link (which is like a shortcut in Windows and other desktop systems) in our `/usr/local/bin` folder, with the name `common`, which points to the script we have written. We can now run the `common` command without specifying its path:

```bash
$ common
common commands:
97 gcm
96 gpr
...
```

This works because when the shell sees a command, it searches through the folders in the $PATH environment variable to find out where the command is. And the `/usr/local/bin` folder is in this list of paths.

Why do we use the `/usr/local/bin` folder rather than the `/usr/bin` folder? This is just a convention. In general, the `/usr/bin` folder is for commands which are installed with package manager tools like `apt` or Homebrew (on MacOS). The `/usr/local/bin` folder is used for commands which you create for yourself on your local machine and manage yourself[^3].



## Tips
- to see all current installed shells $\to$ `cat /etc/shells`

- to change the current user `login shell` if current user is `ahmed`:

    - `chsh -s /usr/bin/zsh`

    - `usermod -s /usr/bin/zsh ahmed`


- `test` -> returs `0` if the condition is true and `1` if the condition is false.
