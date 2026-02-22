#!/usr/bin/env bash

selection=$(tmux list-sessions -F "#{session_name}:#{pane_current_path}" | fzf --prompt="Session: " --print-query)

[ -z "$selection" ] && exit 0

query=$(echo "$selection" | head -n1)
session=$(echo "$selection" | tail -n1)

if [ "$session" != "$query" ]; then
	session_name="${session%%:*}"
	session_path="${session#*:}"
	tmux switch-client -t "$session_name"
else 
	echo "No session found, creating a new one named '$query'"
	session_name="$query"
	session_path="$HOME"
	tmux new-session -d -s "$session_name" -c "$session_path"
	tmux switch-client -t "$session_name"
fi
