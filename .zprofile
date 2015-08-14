CLICOLOR=1
hg_ps1() {
    hg prompt "{ on {branch}}{ at {bookmark}}{status}" 2> /dev/null
}
PROMPT='%m:%0d %# '
export LS_COLORS CLICOLOR

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
