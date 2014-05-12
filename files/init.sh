#!/usr/bin/env bash

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Load up everything
bind Space:magic-space



# Re-source this file to refresh everything
alias rsrc="source ~/.bashrc"

# Exports
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export GIT_EDITOR=vim
export CLICOLOR=1
export LSCOLORS=cxFxGxDxBxegedabagaced



shopt -s histappend # append to the history file, don't overwrite it
HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize # update the values of LINES and COLUMNS if window size changed after each command

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # make less more friendly for non-text input files



# Aliases
source ~/dotfiles/files/aliases/common
source ~/dotfiles/files/aliases/git
source ~/dotfiles/files/aliases/php

# Prompt
source ~/dotfiles/files/prompt

# Don't check mail when opening terminal.
unset MAILCHECK
