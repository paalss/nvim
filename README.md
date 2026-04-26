![Coding file opened in Neovim](./docs/using-nvim.png)

# Pål's Neovim config

## Table of contents

<!-- toc -->

- [Requirements](#requirements)
  * [Semi-requirements / nice to have](#semi-requirements--nice-to-have)
- [Installation](#installation)
  * [Start Neovim](#start-neovim)
- [Usage & utilities](#usage--utilities)
  * [Git](#git)
    + [Source control](#source-control)
      - [Fugitive](#fugitive)
      - [Lazygit.nvim](#lazygitnvim)
  * [Terminal](#terminal)
    + [Exit terminal](#exit-terminal)
    + [Temprorarily jump out of Neovim](#temprorarily-jump-out-of-neovim)
  * [Other tools](#other-tools)
    + [Multiple cursors (Vim visual multi)](#multiple-cursors-vim-visual-multi)
    + [Surround (Nvim surround)](#surround-nvim-surround)
    + [Command preview (live command)](#command-preview-live-command)
  * [Neovim](#neovim)

<!-- tocstop -->

## Requirements

<details>
    <summary>WSL</summary>

This config has been customized for Neovim v0.11.6 on Ubuntu (through WSL on Windows 11)

If you're using Mac then the mac-develop branch

A note on Windows 11 & its Terminal app:

- `[ctrl] [tab]` is automatically set up to "move to next tab"
- I have _also_ defined a `[ctrl] [tab]` keybinding in the autohotkey file, to "move to previous open tab" (just like hitting `[ctrl] 6` in vim)

If you want to use the latter, you'll have to delete the former. You can open up Terminal settings and delete the "move to next tab".

---
</details>

<details>
    <summary>Neovim version 0.11.6</summary>

**My Neovim info**
````
NVIM v0.9.0
Build type: Release
LuaJIT 2.1.0-beta3
``````

[How to install Neovim 0.11.6 in Ubuntu in WSL](docs/neovim-install.md)

---
</details>

<details>
    <summary>Git > 2.31.0 (For Diffview.nvim)</summary>

**How to update git on Ubuntu**

Check `git --version`

Update if necessary

```bash
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version
```

---
</details>

<details>
    <summary>fzf > 0.36 (for fzf-lua)</summary>

If this version is not available in your package manager you can use the "git clone" option

https://github.com/junegunn/fzf?tab=readme-ov-file#installation

https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file#dependencies

---
</details>


<br>

### Semi-requirements / nice to have

<details>
    <summary>Autohotkey (Windows app, for extra keymaps)</summary>

I have made some additional keymaps using Authotkey.

(Some keymaps are too hard / impossible to define in plain Neovim)

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

---
</details>

## Installation 

**Clone config**

```sh
git clone git@github.com:paalss/nvim.git ~/.config/nvim
```

![Intro page](./docs/stakvim.png)

### Start Neovim

```bash
nvim
```

![Commiting with convential commits](./docs/ascii-art.png)
