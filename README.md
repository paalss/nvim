# Påls Neovim config

Built on

````
NVIM v0.9.0
Build type: Release
LuaJIT 2.1.0-beta3
``````

## Setup

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

Just `"vim"` won't do. It'll cause an error.

### Install git delta (better git diff)

visit: https://dandavison.github.io/delta/installation.html

| Debian / Ubuntu | `sudo dpkg -i git-delta-musl_1.16.5_amd64.deb` |
| --------------- | :--------------------------------------------: |

**Usage**

`git diff | delta`

see more

https://www.youtube.com/watch?v=91p1Fp7Db5c

## Utilities

### Markdownpreview

Toggle markdown preview

1. navigate to md file

2. `<leader>mark`

**Enter Neovim file explorer**

```bash
nvim .
```

### Lazygit

Open

`[space] gg`

Use editor way to commit:

`C`

Edit file in new modal:

`e`

Open file in default code editor:

`o`

### Toggleterm

**Open:**

- `F7`
- ahk: `ctrl+ø`


### Fuzzy finder

**Fuzzy finder** 

`[Ctrl+p]`

**Fuzzy finder (git repo)** 

notice: file must be added/tracked in order for it to appear

`[space] pf`

**Search in files** 

`[space] ps`

### Neovim

**Return to Neovim explorer**

`[space] pv`

Space refereres til i configs som `<leader>` forresten.

**Multiple cursors**

Marker valgt frase i visual mode

`Ctrl+n` / `Ctrl+N` for å cycle frem/tilbake

`Ctrl+Q` for å fjerne valg

`Ctrl+1` for å hoppe over en occurence
