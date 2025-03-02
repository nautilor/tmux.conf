# tmux

## Preview

![preview](/screenshots/preview.png)

## Custom Keybindings

> I remapped \<C-a> as my prefix as it is easier to hit

| Shortcut      | Command                          |
| ------------- | -------------------------------- |
| \<prefix> + r | reload configuration             |
| \<prefix> + h | select-pane -L                   |
| \<prefix> + j | select-pane -D                   |
| \<prefix> + k | select-pane -U                   |
| \<prefix> + l | select-pane -R                   |
| \<prefix> + c | new pane on current path         |
| \<prefix> + n | next pane                        |
| \<prefix> + p | previous pane                    |
| \<prefix> + % | split horizontal on current path |
| \<prefix> + " | split vertical on current path   |
| M-r           | reload configuration             |
| M-h           | select-pane -L                   |
| M-j           | select-pane -D                   |
| M-k           | select-pane -U                   |
| M-l           | select-pane -R                   |
| M-Up          | resize-pane -U                   |
| M-Down        | resize-pane -D                   |
| M-Left        | resize-pane -L                   |
| M-Right       | resize-pane -R                   |
| M-c           | new pane on current path         |
| M-n           | next pane                        |
| M-p           | previous pane                    |
| M-x           | kill pane                        |
| M-s           | split horizonal on current path  |
| M-v           | split vertical on current path   |
| M-,           | rename current pane (prompt)     |
| M-4           | rename current session (prompt)  |

## Installation

- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

- Copy/Link `tmux.conf` on `$HOME/.tmux.conf`

```shell
cp tmux.conf $HOME/.tmux.conf
# or
ln -sf `pwd`/tmux.conf $HOME/.tmux.conf
```

- Start tmux and install all the plugins using `<prefix> + I`


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
