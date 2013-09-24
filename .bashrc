# Increase size of history buffer
export HISTSIZE=10000
export HISTFILESIZE=10000

# Share history between sessions
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export INPUTRC=~/.inputrc

# Add user aliases
source .bash_alias
source .ruby_alias
