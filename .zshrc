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

# fix git co, p
# compdef _git co=git-checkout

source $ZSH/oh-my-zsh.sh

# khan academy related
# source /usr/local/arcanist/resources/shell/bash-completion
export LINTDIR=/usr/local/khan-linter

# fancy colors please!
CLICOLOR=1

# use vim
export EDITOR=subl
export VISUAL=subl

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

alias gae=". ~/.virtualenv/khan27/bin/activate"
alias ngx="sudo nginx -c /usr/local/etc/nginx/local.conf"
alias apex="acme -f /mnt/font/LucidaGrande/22a/font -F /mnt/font/SourceCodePro-Regular/22a/font"

# pythonpath updates, for homebrew
# DELETEME(marcos): 24dec (seems to break gae)
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# path updates
PATH=~/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:${PATH}
PATH=$PATH:/usr/local/Cellar/go/1.2.1/libexec/bin
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH=~/khan/devtools/arcanist/khan-bin:${PATH}
PATH=~/khan/devtools/git-bigfile/bin:${PATH}
PATH=/usr/local/share/npm/bin:${PATH}
PATH=~/.cabal/bin:${PATH}
PATH=~/.bin/wofftools:${PATH}

PATH=~/khan/devtools/ka-clone/bin:$PATH
PATH=~/khan/devtools/khan-linter/bin:$PATH
PATH=~/khan/devtools/git-workflow/bin:$PATH

FDK_EXE="/Users/marcos/.bin/fdk/Tools/osx"
PATH=${PATH}:$FDK_EXE:$SFNT_BIN

GOPATH="/Users/marcos/projects/go"
PATH=${PATH}:${GOPATH}/bin
export PATH CLICOLOR ACK_PAGER_COLOR FDK_EXE EDITOR MANPAGER GOPATH

# use rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Plan 9 from userspace
PLAN9=/usr/local/plan9 export PLAN9
PATH=${PATH}:${PLAN9}/bin export PATH
# TODO(marcos): reenable this when fontsrv works
export devdrawretina=1

motd
