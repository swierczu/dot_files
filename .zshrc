export ZSH="/Users/swierczu/.oh-my-zsh"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

plugins=(
    git
    macos
    tmux
    iterm2
    ssh-agent
    docker
    docker-compose
    zsh-navigation-tools
    fzf
    z
)

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

ZSH_THEME="amuse"

HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER="swierczu"
export LANG="en_US.UTF-8"

alias emacs='/usr/local/bin/emacs'
alias e='/usr/local/bin/emacsclient -n'
alias ec='/usr/local/bin/emacsclient -t'
alias grep='/usr/local/bin/ggrep'

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

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Python pyenv
eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# brew ZSH completions
#
# You may also need to force rebuild `zcompdump`:
#   rm -f ~/.zcompdump; compinit
#
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
#   chmod -R go-w '/usr/local/share/zsh'
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi
