function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

# PS1 prompt color vars
export PROMPT_DIRTRIM='2' #only works with bash 4.x

RED="\[\033[1;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
PURPLE="\[\033[1;35m\]"
BLUE="\[\033[0;34m\]"
TIME="[\t]"
DIRNAME="\w"

export PS1="$PURPLE$DIRNAME$RED\$(parse_git_branch)$YELLOW\$$WHITE "

