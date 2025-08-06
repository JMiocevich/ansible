#!/bin/bash

# Show status bar
tmux set-option -g status on

# Rebind keys
tmux bind-key 0 select-window -t 0
tmux bind-key 1 select-window -t 1
tmux bind-key 2 select-window -t 2
tmux bind-key 3 select-window -t 3
