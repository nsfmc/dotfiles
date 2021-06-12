set -o emacs

if [[ -z ${HAS_ZSHENV+x} ]]; then
  source ~/.zshenv
fi

# allows using fancy colors for the prompt and elsewhere
autoload -U colors && colors
setopt prompt_subst

if [[ -e ~/projects/dotfiles/vcs-prompt.sh ]]; then
  source ~/projects/dotfiles/vcs-prompt.sh
fi

PROMPT='
%{$fg[blue]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '


# fancy zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'

# tab completion for directory names
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt MENU_COMPLETE

# bash-completion (for zsh git completion)
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

## History command configuration (from omz)
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_find_no_dups      # do not repeat previously found commands during search
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt append_history         # always add to history, no overwrites
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data


##############################################
# Utility shell commands
#
alias dicelist="python -c \"import random; print ' '.join([''.join([str(random.randrange(1,7)) for x in range(5)]) for x in range(4)])"\"

# for suing acme editor in retina
alias apex="acme -f /mnt/font/LucidaGrande/22a/font -F /mnt/font/SourceCodePro-Regular/22a/font"


# Add global npm path
alias npmoffline="npm --cache-min 9999999"


# pyenv
# -- i've disabled this by default but it now
# -- gets sourced in the `wo` script
# export PYENV_DIR=~/.pyenv
# [ -d "$PYENV_DIR" ] && eval "$(pyenv init -)"

# scmpuff (thanks mroth)
eval "$(scmpuff init -s)"


# PBJ support
PBJ_PAGER="vim --cmd 'let no_plugin_maps=1' -c 'runtime! macros/less.vim|set syntax=json|colorscheme delek' -"
export PBJ_PAGER



motd
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
