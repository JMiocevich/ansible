#!/bin/bash

# Hide status bar
tmux set-option -g status off

# Unbind specific keys (e.g., 0, 1, 2, 3)
tmux unbind-key 0
tmux unbind-key 1
tmux unbind-key 2
tmux unbind-key 3

# You can add more keys to disable as needed
