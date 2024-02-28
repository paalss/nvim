# Pål's Neovim config

## Table of contents

<!-- toc -->

- [Neovim info](#neovim-info)
- [Install & setup Neovim in WSL](#install--setup-neovim-in-wsl)
  * [Install dependencies](#install-dependencies)
  * [Update git on ubuntu](#update-git-on-ubuntu)
  * [Setup AutoHotkey (for Windows)](#setup-autohotkey-for-windows)
  * [Use (n)vim as commit message tool](#use-nvim-as-commit-message-tool)
  * [Install Lazygit](#install-lazygit)
  * [Install git delta (better git diff)](#install-git-delta-better-git-diff)
- [Utilities](#utilities)
  * [Markdown preview](#markdown-preview)
  * [Show Errors](#show-errors)
    + [Show all errors in project](#show-all-errors-in-project)
    + [Language errors (LSP zero)](#language-errors-lsp-zero)
  * [Git](#git)
    + [Editor git signs (Gitsigns)](#editor-git-signs-gitsigns)
    + [Source control (Lazygit.nvim)](#source-control-lazygitnvim)
  * [In-Neovim-buffer terminal (FTerm) (Constantly breaks. Same with Toggleterm. Maybe remove)](#in-neovim-buffer-terminal-fterm-constantly-breaks-same-with-toggleterm-maybe-remove)
  * [Navigation](#navigation)
    + [Project navitation](#project-navitation)
    + [File navigation](#file-navigation)
      - [Fuzzy finder (telescope)](#fuzzy-finder-telescope)
    + [Multiple cursors (Vim visual multi)](#multiple-cursors-vim-visual-multi)
  * [Surround (Nvim surround)](#surround-nvim-surround)
  * [Command preview](#command-preview)
  * [Neovim](#neovim)

<!-- tocstop -->

Update table of contents:

```
npm install -g markdown-toc
markdown-toc -i README.md
```
Close and reopen file to see changes

## Neovim info

This config is built on

````
NVIM v0.9.0
Build type: Release
LuaJIT 2.1.0-beta3
``````

## Install & setup Neovim in WSL

[Install neovim](docs/neovim-install.md)

**Install this config**

Clone this repo into `~/.config`

_Path to init.lua should be:_ `~/.config/nvim/init.lua`

### Install dependencies

`:Lazy`

**dependency sindrets/gitdiff requires**
- Git ≥ 2.31.0

### Update git on ubuntu

Check `git --version`

Update if necessary

```bash
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version
```

### Setup AutoHotkey (for Windows)

AutoHotkey makes it far more easier to create hotkeys/mappings.

AutoHotkey is available for Windows, which you should be using if you use Windows & WSL.

**Install AutoHotkey:**

https://www.autohotkey.com/

Download v2.0, launch `AutoHotkey_2.x.x_setup`, accept the default suggestions

**Start script**

Run ahk file

`:lua Ahk()` (might need to source `:so` `autohotkey/init.lua` first)

or

click 'run script' from the right-click menu on the ahk-file

**Stop script**

`Alt+Esc`

### Use (n)vim as commit message tool

`git config --global core.editor "nvim"`

Just `"vim"` won't do. It'll cause an error upon commiting from toggleterm (assuming the same goes for Fterm).

### Install Lazygit

As explained in https://github.com/jesseduffield/lazygit#ubuntu,

run

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

Verify installation

```bash
lazygit --version
```

### Install git delta (better git diff)

visit: https://dandavison.github.io/delta/installation.html

Download the deb for Debian / Ubuntu

| Debian / Ubuntu | `sudo dpkg -i git-delta-musl_x.xx.x_amd64.deb` |
| --------------- | ---------------------------------------------- |

**Usage**

`git diff | delta`

see more

<https://www.youtube.com/watch?v=91p1Fp7Db5c>

## Utilities

### Markdown preview

Toggle markdown preview

1. navigate to md file

2. `[space] mark`

**Enter Neovim file explorer**

```bash
nvim .
```

### Show Errors

#### Show all errors in project

```
Trouble
```

#### Language errors (LSP zero)

1. move cursor over line
2. :lua vim.diagnostic.open_float()


### Git

#### Editor git signs (Gitsigns)

**Git blame line**

`[space] tb`

#### Source control (Lazygit.nvim)

Requirements:

- Lazygit has to be installed
- Lazygit is configured to use **git delta**. Make sure to either install that or remove that `pager` option in config.yml.

**Open overview**

`[space] gg`

**Open git history**

`[space] glo`

**Open git history for this file**

`[space] glgp`

**Commit using git's default configured editor (nvim)**

`C` (uppercase)

**Edit file in new modal:**

`e`

**Open file in default code editor:**

`o`

### In-Neovim-buffer terminal (FTerm) (Constantly breaks. Same with Toggleterm. Maybe remove)

**Toggle open/close**

- `[Alt]+i`
- ahk: `[ctrl]+ø`

### Navigation

#### Project navitation

#Open recent project

1. Open Lazygit
2. `[ctrl]+r`

#### File navigation

##### Fuzzy finder (telescope)

telescope.lua 

#### Multiple cursors (Vim visual multi)

1. Visual mode `v`
2. Enter  visual multi mode `[ctrl]+n`

----

**Column selection**

`[ctrl]+[up/down arrowkey]`

**Multiple cursors**

`[Ctrl]+n` / `[Ctrl]+N` to add mode markings

### Surround (Nvim surround)

The primary way of adding a new pair to the buffer is via the normal-mode *ys*
operator, which stands for "you surround". It can be used via
`ys{motion}{char}`, which surrounds a given {motion} with a delimiter pair
associated with {char}. For example, `ysa")` means "you surround around quotes
with parentheses".

**Surround visual selection**

`S` (uppercase)

- `ys` (you surround/add)
- `cs` (change surrounding)
- `ds` (delete surrounding)

**W/o visual selection**

    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

Detailed information on how to use this plugin can be found in :h nvim-surround.usage.

### Command preview

<https://github.com/smjonas/live-command.nvim>

Preview norm and macros

- `:Norm` to preview `:norm`
- `:At a` to preview `:norm @a`

### Neovim

**Return to Neovim explorer**
 
`[space] vv`

**Paste from OS clipboard**

1. insert mode
2. disable helper features like auto-newline-comments: `:set paste`
3. paste: `[shift]+[right mouse click]`
4. re-enable helper features: `:set nopaste`

**Indent line**

INSERT MODE

`[ctrl]+t` / `[ctrl]+d`

VISUAL MODE 

`<` or `>`
