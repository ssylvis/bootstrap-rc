# Increase size of history buffer
export HISTSIZE=10000
export HISTFILESIZE=10000

# Share history between sessions
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export INPUTRC=~/.inputrc
export TERM=screen-256color

# Add user aliases
source .bash_alias
source .ruby_alias
