# Nvim configs ThePrimeagen tutorial

https://www.youtube.com/watch?v=w7i4amO_zaE

## Install package manager: packer.nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Setup

```bash
nvim lua/theprimeagensetup/packer
```

`:so`

`:PackerSync`

### install git delta (better git diff)

visit: https://dandavison.github.io/delta/installation.html

+-----------------+------------------------------------------------+
| Debian / Ubuntu | sudo dpkg -i git-delta-musl_0.16.5_amd64.deb   |
+-----------------+------------------------------------------------+

`git diff | delta`

see more

https://www.youtube.com/watch?v=91p1Fp7Db5c

## Keyboard shortcuts

**Enter Neovim file explorer**

```bash
nvim .
```

## Neovim

**Return to Neovim explorer**

`[space] pv`

Space refereres til i configs som `<leader>` forresten.

**Fuzzy finder**

`[space] pf`

**Fuzzy finder (git repo)**

notice: file must be added/tracked in order for it to appear

`[Ctrl+p]`

**Search in files**

`[space] ps`

**LazyGit**

`[space] gg`

**Toggleterm**

`[ctrl]+l`

