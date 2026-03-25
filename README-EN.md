[![Telegram](https://img.shields.io/badge/Telegram-@TeaTechnology-26A5E4?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/TeaTechnology)

[![GitHub](https://img.shields.io/badge/GitHub-MichiTheCat--RedStar-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/MichiTheCat-RedStar)

[![Itch.io](https://img.shields.io/badge/Itch.io-michi--the--cat-FA5C5C?style=for-the-badge&logo=itch.io&logoColor=white)](https://michi-the-cat.itch.io)

#### The English and Russian translations may differ slightly, or the English translation may be slightly outdated.


## Purpose

The goal was to create a terminal in C, subsequently compiling it into a binary file to support Windows and Linux.

The specific idea is that Windows CMD or Linux Terminal have different syntaxes and many commands that are unnecessary for me, or commands I would never use.

This terminal does not support most functions, such as system commands, SSH, various package installers, and so on.

This terminal was created more with the aim of delving deeper into the C programming language, which was chosen for its convenient minimalism and support for compiling into bytecode executable files.

For better cross-system functionality, there will be no dependency files, such as local libraries – only the binary file.

*Just in case, a [Python](/src/GreenTerminal.py) file has also been added in case of issues running the binary file, so please note that the Python version is not the main one and may not support the latest changes or some functions.*

## Running

- The [/bin](/bin/) directory contains binaries (compiled files) for [Windows](/bin/windows/GreenTerminal.exe) and [Linux](/bin/linux/GreenTerminal).
- The [/src](/src/) directory contains the [source code](/src/GreenTerminal.c) in C and the [Python equivalent](/src/GreenTerminal.py) of the code.
- Also, for use in your own separate projects or forks based on this, you should familiarize yourself with the [license](LICENSE).

**Please:** Add the binary file to `PATH` or its equivalent; perhaps in the future this will be done automatically, or there will be a separate file to add it to `PATH`, but for now please add it manually.

## Syntax

Repeating the text from the '[purpose](#purpose)', I want to reiterate that not all commands will be here, only the most basic ones necessary for me, [MichiTheCat](https://github.com/MichiTheCat-RedStar), for one type of management or another. Also, this project is primarily for learning the C language.

### Commands

- `help`|`?` - displays all commands
- `exit` - closes execution
- `data` - displays the date
- `time` - displays the time in seconds
- `version` - displays the version

**#TODO**

- `read {dir}` - outputs text from a file
- `delete {dir}` - deletes a file
- `look {path}` - lists files and folders in the path

*I don't know how to work with files in C yet to create these functions, but I'll add them in future updates...*

- `clear` - clears the terminal
- `info` - shows system information
- implement an error handler
- ideally, create a simple file editor similar to nano, but that's difficult
- `command {command}` - emulate an OS command

*Should commands be entered as `command "path_to_file"` or rather `command` and then a `path> ` field appears for entering the path... The second is easier – then I wouldn't need to parse paths and such, which I'm not good at, but is it better for learning purposes?*

---

*All rights reserved under the [MIT license](LICENSE) by user MichiTheCat on GitHub in 2026.*