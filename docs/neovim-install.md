# Neovim 

## Installasjon Ubuntu - Gjennom apt

[Skaffe neovim for ubuntu](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)

```bash
sudo apt install neovim
```

[Dokumentasjon](https://neovim.io/doc/user/)

[Neovim Fireship video](https://www.youtube.com/watch?v=c4OyfL5o7DU)

### Start

```bash
nvim
```

### Tutorial

```bash
:Tutor
```

## Avinstallere

```bash
sudo apt remove neovim
```

## Skaffe versjon 0.9.0

Installasjonen over gir bare 0.4.3, desverre. Versjon 0.9.0 er ikke tilgjengelig med den metoden. For å installere nyere versjon på linux kan du kjøre tarball metoden.

Last ned tarball, se https://github.com/neovim/neovim/releases/tag/v0.9.0

Flytt til `~/.local/bin/`

```bash
cd ~/.local/bin
tar xzvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
ln -s ./nvim-linux64/bin/nvim ./nvim
```

Extract...

Følg denne tutorialen, den er steinbra :+1: https://www.youtube.com/watch?v=2wapxsfzLho&list=LL&index=5

### Åpne Neovim

```bash
nvim
```

## Ta backup av nvim config og clean cache


```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

https://astronvim.com/

## Install a nerd font

Ubuntu nerd font funker for en eller annen grunn ikke. Du får installert den, men den dukker ikke opp i WSL/Ubuntu on windows-menyen. 
Men du kan installere denne: [Meslo](https://github.com/romkatv/dotfiles-public/blob/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf) 
eller [3270NerdFont](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/3270/Regular/3270NerdFont-Regular.ttf) for eksempel

Congratulations!
