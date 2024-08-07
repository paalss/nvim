# Vim Normal Mode Commands

From `:help index`

| Tag                      | Character          | Note                                    | Action in Normal Mode                                                                 |
|--------------------------|--------------------|-----------------------------------------|---------------------------------------------------------------------------------------|
|                          | CTRL-@             |                                         | not used                                                                              |
| CTRL-A                   | CTRL-A             | 2                                       | add N to number at/after cursor                                                       |
| CTRL-B                   | CTRL-B             | 1                                       | scroll N screens Backwards                                                            |
| CTRL-C                   | CTRL-C             |                                         | interrupt current (search) command                                                    |
| CTRL-D                   | CTRL-D             |                                         | scroll Down N lines (default: half a screen)                                          |
| CTRL-E                   | CTRL-E             |                                         | scroll N lines upwards (N lines Extra)                                                |
| CTRL-F                   | CTRL-F             | 1                                       | scroll N screens Forward                                                              |
| CTRL-G                   | CTRL-G             |                                         | display current file name and position                                                |
| <BS>                     | <BS>               | 1                                       | same as "h"                                                                           |
| CTRL-H                   | CTRL-H             | 1                                       | same as "h"                                                                           |
| <Tab>                    | <Tab>              | 1                                       | go to N newer entry in jump list                                                      |
| CTRL-I                   | CTRL-I             | 1                                       | same as <Tab>                                                                         |
| <NL>                     | <NL>               | 1                                       | same as "j"                                                                           |
| CTRL-J                   | CTRL-J             | 1                                       | same as "j"                                                                           |
|                          | CTRL-K             |                                         | not used                                                                              |
| CTRL-L                   | CTRL-L             |                                         | redraw screen                                                                         |
| <CR>                     | <CR>               | 1                                       | cursor to the first CHAR N lines lower                                                |
| CTRL-M                   | CTRL-M             | 1                                       | same as <CR>                                                                          |
| CTRL-N                   | CTRL-N             | 1                                       | same as "j"                                                                           |
| CTRL-O                   | CTRL-O             | 1                                       | go to N older entry in jump list                                                      |
| CTRL-P                   | CTRL-P             | 1                                       | same as "k"                                                                           |
|                          | CTRL-Q             |                                         | not used, or used for terminal control flow                                           |
| CTRL-R                   | CTRL-R             | 2                                       | redo changes which were undone with 'u'                                               |
|                          | CTRL-S             |                                         | not used, or used for terminal control flow                                           |
| CTRL-T                   | CTRL-T             |                                         | jump to N older Tag in tag list                                                       |
| CTRL-U                   | CTRL-U             |                                         | scroll N lines Upwards (default: half a screen)                                       |
| CTRL-V                   | CTRL-V             |                                         | start blockwise Visual mode                                                           |
| CTRL-W                   | CTRL-W {char}      |                                         | window commands, see CTRL-W                                                           |
| CTRL-X                   | CTRL-X             | 2                                       | subtract N from number at/after cursor                                                |
| CTRL-Y                   | CTRL-Y             |                                         | scroll N lines downwards                                                              |
| CTRL-Z                   | CTRL-Z             |                                         | suspend program (or start new shell)                                                  |
|                          | CTRL-[ <Esc>       |                                         | not used                                                                              |
| CTRL-\_CTRL-N            | CTRL-\ CTRL-N      |                                         | go to Normal mode (no-op)                                                             |
| CTRL-\_CTRL-G            | CTRL-\ CTRL-G      |                                         | go to Normal mode (no-op)                                                             |
|                          | CTRL-\ a - z       |                                         | reserved for extensions                                                               |
|                          | CTRL-\ others      |                                         | not used                                                                              |
| CTRL-]                   | CTRL-]             |                                         | :ta to ident under cursor                                                             |
| CTRL-^                   | CTRL-^             |                                         | edit Nth alternate file (equivalent to ":e #N")                                       |
| CTRL-<Tab>               | CTRL-<Tab>         |                                         | same as `g<Tab>` : go to last accessed tab page                                       |
|                          | CTRL-_             |                                         | not used                                                                              |
| <Space>                  | <Space>            | 1                                       | same as "l"                                                                           |
| !                        | !{motion}{filter}  | 2                                       | filter Nmove text through the {filter} command                                        |
| !!                       | !!{filter}         | 2                                       | filter N lines through the {filter} command                                           |
| quote                    | "{register}        |                                         | use {register} for next delete, yank or put ({.%#:} only work with put)               |
| #                        | #                  | 1                                       | search backward for the Nth occurrence of the ident under the cursor                  |
| $                        | $                  | 1                                       | cursor to the end of Nth next line                                                    |
| %                        | %                  | 1                                       | find the next (curly/square) bracket on this line and go to its match                 |
| N%                       | {count}%           | 1                                       | go to N percentage in the file                                                        |
| &                        | &                  | 2                                       | repeat last :s                                                                        |
| '                        | '{a-zA-Z0-9}       | 1                                       | cursor to the first CHAR on the line with mark {a-zA-Z0-9}                            |
| ''                       | ''                 | 1                                       | cursor to the first CHAR of the line where the cursor was before the latest jump      |
| '(                       | '(                 | 1                                       | cursor to the first CHAR on the line of the start of the current sentence             |
| ')                       | ')                 | 1                                       | cursor to the first CHAR on the line of the end of the current sentence               |
| '<                       | '<                 | 1                                       | cursor to the first CHAR of the line where highlighted area starts/started in buffer  |
| '>                       | '>                 | 1                                       | cursor to the first CHAR of the line where highlighted area ends/ended in buffer      |
| '[                       | '[                 | 1                                       | cursor to the first CHAR on the line of the start of last operated text               |
| ']                       | ']                 | 1                                       | cursor to the first CHAR on the line of the end of last operated text                 |
| '{                       | '{                 | 1                                       | cursor to the first CHAR on the line of the start of the current paragraph            |
| '}                       | '}                 | 1                                       | cursor to the first CHAR on the line of the end of the current paragraph              |
| (                        | (                  | 1                                       | cursor N sentences backward                                                           |
| )                        | )                  | 1                                       | cursor N sentences forward                                                            |
| star                     | *                  | 1                                       | search forward for the Nth occurrence of the ident under the cursor                   |
| +                        | +                  | 1                                       | same as <CR>                                                                          |
| ,                        | ,                  | 1                                       | repeat latest f, t, F or T in opposite direction N times                              |
| -                        | -                  | 1                                       | cursor to the first CHAR N lines higher                                               |
| .                        | .                  | 2                                       | repeat last change with count replaced with N                                         |
| /                        | /{pattern}<CR>     | 1                                       | search forward for the Nth occurrence of {pattern}                                    |
| /<CR>                    | /<CR>              | 1                                       | search forward for {pattern} of last search                                           |
| 0                        | 0                  | 1                                       | cursor to the first char of the line                                                  |
| count                    | 1                  |                                         | prepend to command to give a count                                                    |
| count                    | 2                  |                                         |                                                                                       |
| count                    | 3                  |                                         |                                                                                       |
| count                    | 4                  |                                         |                                                                                       |
| count                    | 5                  |                                         |                                                                                       |
| count                    | 6                  |                                         |                                                                                       |
| count                    | 7                  |                                         |                                                                                       |
| count                    | 8                  |                                         |                                                                                       |
| count                    | 9                  |                                         |                                                                                       |
| :                        | :                  | 1                                       | start entering an Ex command                                                          |
| N:                       | {count}:           |                                         | start entering an Ex command with range from current line to N-1 lines down           |
| ;                        | ;                  | 1                                       | repeat latest f, t, F or T N times                                                    |
| <                        | <{motion}          | 2                                       | shift Nmove lines one 'shiftwidth' leftwards                                          |
| <<                       | <<                 | 2                                       | shift N lines one 'shiftwidth' leftwards                                              |
| =                        | ={motion}          | 2                                       | filter Nmove lines through "indent"                                                   |
| ==                       | ==                 | 2                                       | filter N lines through "indent"                                                       |
| >                        | >{motion}          | 2                                       | shift Nmove lines one 'shiftwidth' rightwards                                         |
| >>                       | >>                 | 2                                       | shift N lines one 'shiftwidth' rightwards                                             |
| ?                        | ?{pattern}<CR>     | 1                                       | search backward for the Nth previous occurrence of {pattern}                          |
| ?<CR>                    | ?<CR>              | 1                                       | search backward for {pattern} of last search                                          |
| @                        | @{a-z}             | 2                                       | execute the contents of register {a-z}

