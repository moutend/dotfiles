# My *.reg files

For MacBook Air that runs Windows 10 with BootCamp.

Actually, we have to create `*.reg` file with Little-endian UTF-16 Unicode text, with CRLF, CR line terminators.
However, it works fine normal ascii file.
I don't know why but you just open `*.reg` file in this directory and the key-value pair will be created without any errors.

## scancode.reg

`scancode.reg` make changes below.

1. Swap RALT and RGUI
2. Change from RGUI to RCTRL

On Windows, RGUI means Right Windows key.
(On Mac OSX, RGUI means Right Command key)
 You can get the full table of keycodes at http://www.computer-engineering.org/ps2keyboard/scancodes1.html
