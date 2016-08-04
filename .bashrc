# Increase size of history buffer
export HISTSIZE=10000
export HISTFILESIZE=10000

# Share history between sessions
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Source boxen updates to environment
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Add own overrides
export INPUTRC=~/.inputrc
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export PATH=${PATH}:~/bin

# Add auto-completion to git
source ~/git-completion.bash

# Override prompt
PS1="\h:\w$ "

# Add user aliases
for alias in `ls ~/.*_alias`; do
  source $alias
done
