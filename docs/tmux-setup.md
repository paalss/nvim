Install tmux

```bash
apt install tmux
```

Start a new session

```bash
tmux new
```

Stop session

`exit`

Detach from session

`[Ctrl]+b d`

List active sessions

`tmux ls`

Re-attach to session

`tmux attack -t [nubmer]`

## Panes

### Create new pane

To the right

`[Ctrl]+b %`

At the bottom

`[Ctrl]+b "`

### Navigate between panes

`[Ctrl]+b` `[arrowkey]`

### Resize panes

`[Ctrl]+b+[arrowkey]`

## Windows

### Create new window

`[ctrl]+b` `c`

### Navigate windows

`[Ctrl]+b` `[number]`

### Rename window

`[Ctrl]+b` `,`
