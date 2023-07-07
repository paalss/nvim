# Nvim configs ThePrimeagen tutorial

https://www.youtube.com/watch?v=w7i4amO_zaE

## Install package manager: packer.nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```bash
nvim lua/theprimeagensetup/packer
```

`:so`

`:PackerSync`

## Enter Neovim file explorer

```bash
nvim .
```

## Neovim

### Return to Neovim explorer

`[space] pv`

Space refereres til i configs som `<leader>` forresten.

### Fuzzy finder

`[space] pf`


### Fuzzy finder (git repo)

notice: file must be added/tracked in order for it to appear

`[Ctrl-p]`


### Search in files

`[space] ps`

### LazyGit

`[space] gg`

### Toggleterm

`[ctrl]+l`
