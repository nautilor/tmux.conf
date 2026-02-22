# TMUX Configuration

Personal configuration for [tmux](https://github.com/tmux/tmux), focused on fast window management, consistent pane behavior, and minimal friction while working.

## Requirements

- [tmux](https://github.com/tmux/tmux/)
- [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [fzf](https://github.com/junegunn/fzf) â used by session/window switcher scripts

## Installation

```bash
git clone <your-repo-url> ~/.config/tmux
```

Inside tmux, install plugins with:

```bash
<prefix> + I
```

(Requires TPM to be installed.)

## Plugins

- [tmux-mighty-scroll](https://github.com/noscript/tmux-mighty-scroll)  
  Enables smooth and convenient scrolling through terminal output.

## Custom Prefix Key

The default tmux prefix (`Ctrl + b`) is replaced with:

```
Ctrl + d
```

## Key Bindings

Most bindings are **prefix-free** using `Alt` (`M-`) for speed. Prefix bindings are reserved for less frequent operations.

### Configuration

| Key | Action |
|-----|--------|
| `Ctrl + r` | Reload tmux configuration |

### Session Management

| Key | Action |
|-----|--------|
| `Alt + o` | Open fzf session switcher (creates new session if no match) |
| `Alt + Tab` | Switch to next session |
| `Alt + Shift + Tab` | Switch to previous session |
| `Alt + .` | Rename current session |

### Window Management

| Key | Action |
|-----|--------|
| `Alt + q/w/e/r/t` | Jump to window 0-4 |
| `Alt + j` | Create new window (inherit current path) |
| `Alt + n` | Next window |
| `Alt + m` | Previous window |
| `Alt + f` | Open fzf window switcher (creates new window if no match) |
| `Alt + c` | Close current window |
| `Alt + ,` | Rename current window |
| `Alt + l` | Open lazygit in a new window |

### Pane Management

| Key | Action |
|-----|--------|
| `Alt + s` | Split pane vertically (inherit current path) |
| `Alt + v` | Split pane horizontally (inherit current path) |
| `Alt + k` | Close current pane |
| `<prefix> + r` | Rotate panes (swap with next) |

### GitHub Copilot

| Key | Action |
|-----|--------|
| `Alt + p` | Open/toggle Copilot session popup for current path |

## Notes

- All new windows and splits inherit the current pane's working directory.
- The status bar uses `bin/shortpath.sh` to keep paths compact (truncates to last 3 segments when depth > 4).
- The Copilot popup (`Alt + p`) derives a session name from the path's md5 hash; pressing `Alt + p` again while inside it detaches back.
- `Ctrl + r` sources `~/.tmux.conf` (symlink this file there if the config lives in `~/.config/tmux`).
