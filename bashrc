#!/usr/bin/env bash
# Main bootstrap
source ~/dotfiles/files/init.sh

# Custom bootstrap if it exists
if [[ -f ~/.bashrc_custom ]]; then
    source ~/.bashrc_custom
fi

# Run tmuxinator if we're not in a tmux session already
if ! [ -n "$TMUX" ]; then
  tmuxinator start default
fi

# Remap CapsLock to F12
xmodmap -e "keycode 66 = F12"
