# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ikea"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx)

source $ZSH/oh-my-zsh.sh

# fancy colors please!
CLICOLOR=1

# fancy zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# use vim
# export EDITOR=subl
# export VISUAL=subl

# turn on colors for ack searches
ACK_PAGER_COLOR="less -x4SRFX"

# use /usr/local for gems
GEM_HOME=/usr/local
export GEM_HOME

# install cask apps to ~/Applications
HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# don't let virtualenv mess up the prompt
# these are already handled by my extravagant prompt
VIRTUAL_ENV_DISABLE_PROMPT=true
NODE_VIRTUAL_ENV_DISABLE_PROMPT=true

alias dicelist="python -c \"import random; print ' '.join([''.join([str(random.randrange(1,7)) for x in range(5)]) for x in range(4)])"\"

# for suing acme editor in retina
alias apex="acme -f /mnt/font/LucidaGrande/22a/font -F /mnt/font/SourceCodePro-Regular/22a/font"

# path updates
PATH=~/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:${PATH}
PATH=$PATH:/usr/local/Cellar/go/1.2.1/libexec/bin
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# Add global npm path
PATH=/usr/local/share/npm/bin:${PATH}

# add haskell bindir
PATH=~/.cabal/bin:${PATH}

# if you have wofftools installed...
PATH=~/.bin/wofftools:${PATH}

# if you have installed the fdk
FDK_EXE="/Users/marcos/.bin/fdk/Tools/osx"
PATH=${PATH}:$FDK_EXE

# set go paths
GOPATH="/Users/marcos/projects/go"
PATH=${PATH}:${GOPATH}/bin

# export all set vars
export PATH CLICOLOR ACK_PAGER_COLOR FDK_EXE EDITOR MANPAGER GOPATH

# Plan 9 from userspace
PLAN9=/usr/local/plan9 export PLAN9
PATH=${PATH}:${PLAN9}/bin export PATH
# TODO(marcos): reenable this when fontsrv works
# export devdrawretina=1

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# scmpuff (thanks mroth)
eval "$(scmpuff init -s)"

# spacedout
if [ -e ~/SpacedOut/webapp/bin/bash_profile.spacedout ]
then
  source ~/SpacedOut/webapp/bin/bash_profile.spacedout
fi

motd
