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

## Update git on ubuntu

sindrets/gitdiff requires
- Neovim ≥ 0.7.0
- Git ≥ 2.31.0

Check `git --version`

Update if necessary

```bash
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version
```

### use nvim for committing code from terminal

just `"vim"` won't do. Or any other editor.

`git config --global core.editor "nvim"`

### install git delta (better git diff)

visit: https://dandavison.github.io/delta/installation.html

+-----------------+------------------------------------------------+
| Debian / Ubuntu | `sudo dpkg -i git-delta-musl_0.16.5_amd64.deb` |
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

`[F7]`

**Multiple cursors**

Marker valgt frase i visual mode

`Ctrl+n` / `Ctrl+N` for å cycle frem/tilbake

**Autokey**

Installer på Ubuntu

- Offisiell README: https://github.com/autokey/autokey
  - Installasjonsguide: https://github.com/autokey/autokey/wiki/Installing
  - Releases: https://github.com/autokey/autokey/releases/

- Offisiell dokumentasjon for versjon >0.96.0: https://autokey.github.io/index.html
  - eksempelkode finnes på:
    - wiki: https://github.com/autokey/autokey/wiki
    - features: https://github.com/autokey/autokey/wiki/Features
    - example scripts: https://github.com/autokey/autokey/wiki/Example-Scripts


sjekk at python versjon er over 3.7

```bash
sudo apt --fix-broken install
python3 --version
```

gå til releases og last ned common og gtk-versjonen. sistnevnte kan byttes ut med qt versjonen btw, det skal visstnok ikke være så stor forksjell.

`cd` til der du har installert dem.

```bash
VERSION="0.96.0"    # definer VERSION variabel til matchende versjon
sudo dpkg --install autokey-common_${VERSION}_all.deb autokey-gtk_${VERSION}_all.deb
sudo apt --fix-broken install # in the case of dpkg complaining about missing dependencies, it is crucial to run this command
```

Check installation

```bash
autokey-run -h
autokey-gtk -h
```

...skal begge returnere help-text.

avinstallere:

```bash
sudo apt-get remove autokey-common autokey-gtk
```

**Vim Fugitive**

`:G`

`:Gclog` List changes

Commit maps  

cc (gc)                     Create a commit.

ca (gc!)                     Amend the last commit and edit the message.

ce (gcn!)                      Amend the last commit without editing the message.

cw                      Reword the last commit.

cvc                     Create a commit with -v.

cva                     Amend the last commit with -v

cf                      Create a `fixup!` commit for the commit under the
                        cursor.

cF                      Create a `fixup!` commit for the commit under the
                        cursor and immediately rebase it.

cs                      Create a `squash!` commit for the commit under the
                        cursor.

cS                      Create a `squash!` commit for the commit under the
                        cursor and immediately rebase it.

cA                      Create a `squash!` commit for the commit under the
                        cursor and edit the message.

c<Space>                Populate command line with ":Git commit ".

                                                *fugitive_cr*
crc                     Revert the commit under the cursor.

crn                     Revert the commit under the cursor in the index and
                        work tree, but do not actually commit the changes.

cr<Space>               Populate command line with ":Git revert ".

                                                *fugitive_cm*
cm<Space>               Populate command line with ":Git merge ".

c?                      Show this help.

                                                *fugitive_cb*
                                                *fugitive_co*
Checkout/branch maps  

coo                     Check out the commit under the cursor.

cb<Space>               Populate command line with ":Git branch ".

co<Space>               Populate command line with ":Git checkout ".

cb?                     Show this help.
co?


