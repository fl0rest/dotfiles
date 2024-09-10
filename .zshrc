zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/fl0rest/.zshrc'


#Options
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt beep notify
unsetopt autocd
bindkey -v
export EDITOR="nvim"
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS

#Aliases
alias vim='nvim'
alias ll='ls -lah'
alias l='ls -lh'
alias la='ls -lAh'

autoload -Uz compinit
compinit

eval "$(starship init zsh)"
