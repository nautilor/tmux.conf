# TMUX Configuration

Personal configuration for [tmux](https://github.com/tmux/tmux), focused on fast window management, consistent pane behavior, and minimal friction while working.

## Requirements

- [tmux](https://github.com/tmux/tmux/)
- [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm)
- `bin/shortpath.sh` – Script used to shorten file paths in the status bar

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

### Configuration

| Key | Action |
|-----|--------|
| `Alt + r` | Reload tmux configuration |
| `<prefix> + r` | Reload tmux configuration |

### Window Management

| Key | Action |
|-----|--------|
| `<prefix> + j` | Create new window in current pane path |
| `<prefix> + n` | Next window |
| `<prefix> + m` | Previous window |
| `<prefix> + c` | Kill current window |
| `<prefix> + ,` | Rename current window |

### Pane Management

| Key | Action |
|-----|--------|
| `<prefix> + s` | Split vertically (preserve current path) |
| `<prefix> + v` | Split horizontally (preserve current path) |

## Notes

- All new windows and splits inherit the current pane’s working directory.
- The status bar uses `shortpath.sh` to keep paths compact and readable.
