#If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ $TERM != screen* ]] && exec tmux

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="knot"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git mercurial svn npm osx pip sublime vi-mode)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PWD=/Users/tiratat/Repositories/dotfiles/zsh
source ${PWD}/../shared/aliases
source ${PWD}/../shared/path

# https://github.com/rupa/z
. ${PWD}/../z/z.sh

activate() {
    export VIRTUAL_ENV_DISABLE_PROMPT='1'
    export HSENV_DISABLE_PROMPT='1'
    source ./$1/bin/activate
}

