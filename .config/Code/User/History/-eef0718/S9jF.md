# VIM

- vim is a modal `editor`

- use vim to open file from terminal

- you can use it to open multiple files

- vim modes:

  1.  normal Mode
  2.  insert Mode
  3.  visual -> v-line, v-block Mode
  4.  select Mode
  5.  terminal-job Mode
  6.  cmdline Mode
  7.  Ex Mode

- ctrl + r --> redo in normal mode

- i -> enter ensert mode and place the cursor before the character you are in

- a --> go one character to the right and enter insert mode

- viw , vaw -> (in visual mode) // diw, daw -> (in normal mode)

- you can enter cmdline mode using four main categories of commands:

  1. search patterns:
     - `/` -> used to search for a pattern from start of a file to the end of it.

2.                  - `?` -> used to search for a pttern from end of a file to the start of it.

    2.  EX command(vim commands):

        - `:`

    3.  External Commands:
        - `!`

> you can enter the `command line mode` from the `normal mode` or from the `visual mode`

- EX mode
- similar to `command line mode` but `you still in this mode after you enter an command`
- you can enter EX mode using `Q`

- Tip: If you have made a small typing error in replace mode, just press backspace without exiting the replace mode. This will revert the changes made to the preceding character in replace mode.

- Replace Mode VS Virtual Replace Mode
- terminal job mode
- terminal normal mode

---

1. Why VIM?

2. How to install vim?
   - debaian
   - rted hat
   - arch
   - mack os
   - windows

The Vim Philosophy -> DESCRIBE, don't EXPLAIN

e -> end of the current word
a -> append (push some characters to the end)

I -> In front of the line
A -> At the end of the line

f + <char> -> jumps to the next char in this line

F + <char> -> jumps to the previous char in this line

relative jumps:
-> Relative jumps deals with the special
case that some objects are inherently
hard to describe!

- Thoughts:

  1. take about how to locate objects
  2. take about modal editing

- when using vim, there are three different phases:

  1. Drafting
  2. Skimming
  3. Editing

- Two principles:

  1.  cursor follows edit.
  2.  screen follows view.

- the `.` command -> repeat last simple normal mode edit command.

- A `macro` is a sequence of keystrokes

- go to line `11`:

  1. 11gg
  2. 11G
  3. :11

- in ex or cmd mode:

  1. `0` -> first line in the file
  2. `$` -> last line in the file
  3. `%` -> all lines in the file

- <:w> + filename -> writes the contents in the current buffer to <filename>
- <:w> -> writes the content of the current buffer to the file opened in the current buffer
- <:wa> -> writes the contents in all buffers to all files that opened in all current buffers
- <:wq> -> quit and save
- <:x> -> quit and save

- :x = :wq

- <C-b> -> scroll full page up
- <C-f> -> scroll full page down

- <C-u> -> scroll half page up
- <C-d> -> scroll half page down

- <C-y> -> scroll 1 line up
- <C-e> -> scroll 1 line down

- set <optionname>? -> queries whether a boolean option is set or not.

- nonboolean options -> set <optionname> = <value>

### Fundmaintal Text Objects

- `word` -> c-style variable name (characters, number and \_ only)
- `WORD` -> sequences of characters or symobls or numbers seperated by any whitespace characters

- `iw` -> the cursor will be on the first `any-thing` after the word, even it is a whitespace
- `aw` -> the cursor will be on the first `character of the next word`

- Text Objects:

  1. word/WORD obejcts.
  2. line obejcts.
  3. enclosed obejcts.

- visual mode
- visual line mode
- visual block mode

1