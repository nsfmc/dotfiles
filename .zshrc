
# allows using fancy colors for the prompt and elsewhere
autoload -U colors && colors
setopt prompt_subst

if [[ -e ~/projects/dotfiles/vcs-prompt.sh ]]; then
  source ~/projects/dotfiles/vcs-prompt.sh
fi

PROMPT='
%{$fg[blue]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

# fancy colors please!
CLICOLOR=1

# fancy zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'

# use vim
export EDITOR=subl
export HGEDITOR="subl -n -w"
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
alias npmoffline="npm --cache-min 9999999"

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
# export NVM_DIR=~/.nvm
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# pyenv
export PYENV_DIR=~/.pyenv
[ -d "$PYENV_DIR" ] && eval "$(pyenv init -)"

# scmpuff (thanks mroth)
eval "$(scmpuff init -s)"

# spacedout
if [ -e ~/SpacedOut/sense/bin/bash_profile.spacedout ]
then
  source ~/SpacedOut/sense/bin/bash_profile.spacedout
  # export SENSE_HMR_HOST="hmr.local"
  export AWS_REGION="us-west-2"
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ACCESS_KEY_ID
fi


# export SENSE_HMR_HOST="hmr.local"
alias cpr="git pull-request -F $SENSE_HOME/.github/PULL_REQUEST_TEMPLATE/client.md"
alias npr="git pull-request -F $SENSE_HOME/.github/PULL_REQUEST_TEMPLATE/server.md"

motd

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /Users/marcos/projects/chromeless/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/marcos/projects/chromeless/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [[ -f /Users/marcos/projects/chromeless/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/marcos/projects/chromeless/serverless/node_modules/tabtab/.completions/sls.zsh
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

if [ -d ~/projects/google-cloud-sdk ] then
  source /Users/marcos/projects/google-cloud-sdk/completion.zsh.inc
  source /Users/marcos/projects/google-cloud-sdk/path.zsh.inc
fi

export NOTION_HOME="$HOME/.notion"
[ -s "$NOTION_HOME/load.sh" ] && \. "$NOTION_HOME/load.sh"

export PATH="${NOTION_HOME}/bin:$PATH"
