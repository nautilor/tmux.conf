# TMUX Configuration
This is my personal [Tmux](https://github.com/tmux/tmux/) configuration.

## Dependencies
- [Tmux](https://github.com/tmux/tmux/)
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
- [shortpath.sh](./bin/shortpath.sh): A script to shorten file paths in the Tmux status bar.

## Plugins

- [tmux-mighty-scroll](https://github.com/noscript/tmux-mighty-scroll): A Tmux plugin that allows you to scroll through your terminal output with ease.

## Custom Key Bindings
- `Ctrl + d`: Custom prefix key
- `Alt + r`: Reload Tmux configuration
- `<prefix> + r`: Reload Tmux configuration
- `<prefix> + j`: new-window -c "#{pane_current_path}"
- `<prefix> + n`: next-window
- `<prefix> + m`: previous-window
- `<prefix> + s`: split-window -v -c "#{pane_current_path}"
- `<prefix> + v`: split-window -h -c "#{pane_current_path}"
- `<prefix> + c`: kill-window
- `<prefix> + ,`: command-prompt -p "Rename window:" "rename-window '%%'"




