#!/usr/bin/env zsh

###############################
# EXPORT ENVIRONMENT VARIABLES #
###############################

. "$HOME/.cargo/env"
export WORKSPACE="$HOME/workspace"

# XDG
export XDG_CONFIG_HOME=$HOME/.config

# editor
export EDITOR="nvim"
export VISUAL="vscodium"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/.zsh"

# other software
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"

# Man pages
export MANPAGER='nvim +Man!'
# Glow markdown pager
export PAGER='bat'

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"