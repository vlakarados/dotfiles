#!/usr/bin/env bash

bind Space:magic-space

# Re-source this file to refresh everything
alias rsrc="source ~/.bashrc"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias tmx="TERM=xterm-256color tmux"

# Load up everything


# Helpers

# Aliases
source ~/dotfiles/files/aliases/common
source ~/dotfiles/files/aliases/git
source ~/dotfiles/files/aliases/php

# Prompt
source ~/dotfiles/files/prompt


# Set my editor and git editor
export EDITOR=vim
export GIT_EDITOR=vim

# Don't check mail when opening terminal.
unset MAILCHECK

