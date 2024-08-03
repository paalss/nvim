# Ubuntu

sudo docker run -w /root -it --rm ubuntu:latest bash -c '
  apt-get update && apt-get install -y git nodejs npm lazygit neovim build-essential ripgrep
  git clone https://github.com/paalss/nvim ~/.config/nvim
  nvim
'



# Alpine

er rare greier som skjer ved oppstart med Harpoon.

Og så funker ikke telescope heller.

sudo docker run -w /root -it --rm alpine:edge sh -uelic '
  apk add git nodejs npm lazygit neovim build-base ripgrep --update
  git clone https://github.com/paalss/nvim ~/.config/nvim
  nvim
'


---

# spurte chatgpt om å installere nvim v0.9.0 specifically

sudo docker run -w /root -it --rm ubuntu:latest bash -c '
  apt-get update && apt-get install -y git nodejs npm lazygit build-essential ripgrep curl
  curl -LO https://github.com/neovim/neovim/releases/download/v0.9.0/nvim.appimage
  chmod u+x nvim.appimage
  mv nvim.appimage /usr/local/bin/nvim
  git clone https://github.com/paalss/nvim ~/.config/nvim
  nvim
'

---



# LazyVim

docker run -w /root -it --rm alpine:edge sh -uelic '
  apk add git lazygit neovim ripgrep alpine-sdk --update
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cd ~/.config/nvim
  nvim
'

# NvChad

docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone https://github.com/NvChad/starter ~/.config/nvim
  nvim
  '

# AstroNvim

docker run -w /root -it --rm alpine:edge sh -uelic '
  apk add bash curl git lua nodejs npm lazygit bottom python3 go neovim ripgrep alpine-sdk --update
  # Replace with your own configuration repository to load a user configuration
  git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
  nvim
'

# Lunarvim

docker run -w /tmp -it --rm alpine:edge sh -uelic '
  addgroup -S lunaruser &&
  adduser -S lunaruser -G lunaruser --shell /bin/sh &&
  apk add yarn git python3 cargo neovim ripgrep alpine-sdk bash curl --update &&
  LV_BRANCH="release-1.4/neovim-0.9" su -c "bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/release-1.4/neovim-0.9/utils/installer/install.sh) --no-install-dependencies" lunaruser &&
  su -c /home/lunaruser/.local/bin/lvim lunaruser
'

---

```
sudo snap install docker
```

lunarvim har

LV_BRANCH='release-1.4/neovim-0.9'
