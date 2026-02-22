# tmux Configuration

Personal tmux configuration split across three config files and a `bin/` directory of helper scripts.

## Architecture

`tmux.conf` is the entry point — it sets global options and sources the two split configs:
- `binding.conf` — all key bindings
- `theme.conf` — all visual/status bar styling

The `bin/` scripts are invoked directly from key bindings in `binding.conf`.

## Key Conventions

### Prefix and binding style
- Prefix is `C-d` (not the default `C-b`)
- Most day-to-day bindings are **prefix-free** using `Alt` (`M-`) keys for speed
- Bindings that require the prefix are for less frequent operations (pane splits, lazygit, rename)

### Path inheritance
All new windows and pane splits use `-c "#{pane_current_path}"` to inherit the current working directory.

### `bin/` scripts
- **`shortpath.sh`** — reads a path from stdin; truncates to last 3 segments with `/…/` prefix when depth > 4. Called in `theme.conf` status bar via `#(...)`.
- **`open-copilot.sh`** — takes a path argument, derives a session name from the first 5 chars of its md5 hash, then opens/attaches to that session in a popup. Toggling `M-k` while already in the copilot session detaches back.
- **`switch-session.sh`** — fzf picker over existing sessions; if the typed query doesn't match a session name, creates a new session with that name.
- **`switch-window.sh`** — fzf picker over windows in the current session; if the query doesn't match, creates a new window with that name.

### Theme
Colors are defined as shell variables at the top of `theme.conf` and referenced as `${variable}` throughout the file. The color scheme is Tokyo Night–based.

### Plugins
Managed via [TPM](https://github.com/tmux-plugins/tpm). Install with `<prefix> + I` inside tmux. Currently only `noscript/tmux-mighty-scroll` is used.

### Notable non-obvious binding (`binding.conf`)
`bind -n C-r` reloads `~/.tmux.conf` (note: this is the home-directory path, not `~/.config/tmux/tmux.conf` — relevant if the config is not symlinked).
