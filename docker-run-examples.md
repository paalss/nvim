<https://www.lazyvim.org/installation>

```sh
docker run -w /root -it --rm fedora:latest sh -uelic '
  dnf copr enable -y dejan/lazygit
  dnf install -y git lazygit fd-find curl ripgrep tree-sitter-cli neovim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cd ~/.config/nvim
  nvim
'
```

<https://nvchad.com/docs/quickstart/install>

```sh
docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone https://github.com/NvChad/starter ~/.config/nvim
  nvim
  '
```

<https://www.lunarvim.org/docs/installation>

```sh
docker run -w /tmp -it --rm alpine:edge sh -uelic 'addgroup -S lunaruser && adduser -S lunaruser -G lunaruser --shell /bin/sh && apk add yarn git python3 cargo neovim ripgrep alpine-sdk bash curl --update && LV_BRANCH='release-1.4/neovim-0.9' su -c "bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/release-1.4/neovim-0.9/utils/installer/install.sh) --no-install-dependencies" lunaruser && su -c /home/lunaruser/.local/bin/lvim lunaruser'``
```

