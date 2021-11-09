export ZSH=/Users/swierczu/.oh-my-zsh
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

plugins=(
    git
    osx
    tmux
    iterm2
    ssh-agent
    docker
    zsh-navigation-tools
)

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

ZSH_THEME="amuse"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs newline os_icon host user dir_writable status)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs history time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
#POWERLEVEL9K_DIR_PATH_SEPARATOR_FOREGROUND='white'
#POWERLEVEL9K_DIR_PATH_HIGHLIGHT_FOREGROUND='white'
#POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER="swierczu"
export LANG="en_US.UTF-8"

alias emacs='/usr/local/bin/emacs'
alias e='/usr/local/bin/emacsclient -n'
alias ec='/usr/local/bin/emacsclient -t'

export EDITOR='/usr/local/bin/emacsclient -n'

export PAGER=less

# Go config
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin

# Flutter
export PATH=$PATH:$HOME/flutter/flutter/bin

# Unalias names needed in other places
unalias gb

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Python pyenv
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
