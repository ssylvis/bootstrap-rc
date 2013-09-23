export HISTSIZE=10000
export HISTFILESIZE=10000

shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export INPUTRC=~/.inputrc
export PATH=/home/sean/code/cardspring/bin:${PATH}

# Create user aliases
alias ..='cd ..'
alias ll='ls -al'

alias bexec='bundle exec'
alias brake='bundle exec rake'
alias brspec='bundle exec rspec --fail-fast'
