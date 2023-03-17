#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#
autoload -U compinit
compinit
#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD
## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP
## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
## never ever beep ever
setopt NO_BEEP
## automatically decide when to page a list of completions
#LISTMAX=0
## disable mail checking
MAILCHECK=0
# autoload -U colors
#colors
source ~/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
#antigen bundle ssh-agent
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Auto env
antigen bundle Tarrasch/zsh-autoenv
# Load the theme.
antigen theme agnoster
# Tell antigen that you're done.
antigen apply

unset SSH_AGENT_PID
        if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
        export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

alias vim='nvim'
export EDITOR='nvim'

export PATH=$PATH:/home/kings/.local/bin
