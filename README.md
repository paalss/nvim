# Pål's Neovim config

## Table of contents

<!-- toc -->

- [Neovim info](#neovim-info)
- [Install & setup Neovim](#install--setup-neovim)
  * [Install package manager: packer.nvim](#install-package-manager-packernvim)
  * [Install dependencies](#install-dependencies)
  * [Update git on ubuntu](#update-git-on-ubuntu)
  * [Setup AutoHotkey (Windows&WSL)](#setup-autohotkey-windowswsl)
  * [Use (n)vim as commit message tool](#use-nvim-as-commit-message-tool)
  * [Install git delta (better git diff)](#install-git-delta-better-git-diff)
- [Utilities](#utilities)
  * [Markdown preview](#markdown-preview)
  * [Source control (Lazygit)](#source-control-lazygit)
  * [In-Neovim-buffer terminal (Toggleterm)](#in-neovim-buffer-terminal-toggleterm)
  * [Fuzzy finder (telescope)](#fuzzy-finder-telescope)
  * [Multiple cursors (Vim visual multi)](#multiple-cursors-vim-visual-multi)
  * [Surround (Nvim surround)](#surround-nvim-surround)
  * [Neovim](#neovim)

<!-- tocstop -->

Update table of contents:

```
npm install -g markdown-toc
markdown-toc -i README.md
```
Close and reopen file to see changes

## Neovim info

Built on

````
NVIM v0.9.0
Build type: Release
LuaJIT 2.1.0-beta3
``````

## Install & setup Neovim

[Install neovim](docs/neovim-install.md)

### Install package manager: packer.nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Install dependencies

```bash
nvim lua/theprimeagensetup/packer
```

`:so`

`:PackerSync`

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

### Setup AutoHotkey (Windows&WSL)

AutoHotkey makes it far more easier to create hotkeys/mappings.

AutoHotkey is available for Windows, which you should be using if you use Windows & WSL.

**Install AutoHotkey:**

https://www.autohotkey.com/

**Start script**

Run ahk file from command-line: write path tp AutoHotkey executable and what file to run, eg.:

```bash
timeout 0.1s bash autohotkey/start-ahk.sh
```

or

click 'run script' from the right-click menu on the ahk-file

**Stop script**

`Alt+Esc`

### Use (n)vim as commit message tool

`git config --global core.editor "nvim"`

Just `"vim"` won't do. It'll cause an error upon commiting from toggleterm.

### Install git delta (better git diff)

visit: https://dandavison.github.io/delta/installation.html

| Debian / Ubuntu | `sudo dpkg -i git-delta-musl_1.16.5_amd64.deb` |
| --------------- | ---------------------------------------------- |

**Usage**

`git diff | delta`

see more

https://www.youtube.com/watch?v=91p1Fp7Db5c

## Utilities

### Markdown preview

Toggle markdown preview

1. navigate to md file

2. `[space] mark`

**Enter Neovim file explorer**

```bash
nvim .
```

### Source control (Lazygit)

Lazygit is configured to use git delta. Make sure to either install that or remove that `pager` option in config.yml.

**Open overview**

`[space] gg`

**Open git history**

`[space] glo`

**Open file history**

`[space] glgp`

**Commit using git's default configured editor (nvim)**

`C` (uppercase)

**Edit file in new modal:**

`e`

**Open file in default code editor:**

`o`

### In-Neovim-buffer terminal (Toggleterm)

**Toggle open/close**

- `F7`
- ahk: `[ctrl]+ø`


### Fuzzy finder (telescope)

**Search all filenames** 

`[Ctrl]+p`

**Search all git repo tracked files** 

`[space] pf`

**Search in files** 

`[space] ps`

### Multiple cursors (Vim visual multi)

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

### File explorer (Neo tree)

**Open file explorer**

`[ctrl]+e`

### Colorshceme/theme (darkplus)

**set colorscheme**

eg. `:colorscheme darkplus`

### Neovim

**Return to Neovim explorer**
 
`[space] pv`

**Paste from OS clipboard**

1. insert mode
2. disable helper features like auto-newline-comments: `:set paste`
3. paste: `[shift]+[right mouse click]`
4. re-enable helper features: `:set nopaste`
