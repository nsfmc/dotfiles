# fancy colors please!
CLICOLOR=1

# Config history for zsh
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# use vim
# export EDITOR=subl
# export HGEDITOR="subl -n -w"
# export VISUAL=subl

export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'

# use /usr/local for gems
export GEM_HOME=/usr/local

# install cask apps to ~/Applications
HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# don't let virtualenv mess up the prompt
# these are already handled by my extravagant prompt
VIRTUAL_ENV_DISABLE_PROMPT=true
NODE_VIRTUAL_ENV_DISABLE_PROMPT=true


# path updates
PATH=~/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:${PATH}

####################################################
# Programming Language Paths Etc

# Python system framework path (probably going away)
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# add rust cargo bins if dir present
if [ -d ~/.cargo/bin ]
then 
  PATH=~/.cargo/bin:${PATH}
fi

# Add deno to path if installed
if [ -d ~/.deno ]
then
  PATH="/Users/marcos/.deno/bin:$PATH"
fi


# setup homebrow ruby path
export PATH="/usr/local/opt/ruby/bin:$PATH"


###########################################################
# misc machine/org-specific
#
# spacedout
if [ -e ~/SpacedOut/sense/bin/bash_profile.spacedout ]
then
  source ~/SpacedOut/sense/bin/bash_profile.spacedout

  export AWS_REGION="us-west-2"
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ACCESS_KEY_ID
fi






##########################################################
# exports


# export all set vars
export PATH CLICOLOR ACK_PAGER_COLOR EDITOR MANPAGER

