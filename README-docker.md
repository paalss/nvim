Build

```sh
sudo docker build . -f Dockerfile.neovim -t dockerhub-neovim
```

Run neovim

```sh
sudo docker run -it dockerhub-neovim
```


---------


Build

```sh
sudo docker build . -f Dockerfile-normal -t ubuntu
```

Bash into container

```sh
sudo docker run -it ubuntu bash
```
