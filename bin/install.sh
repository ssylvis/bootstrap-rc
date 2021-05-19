#/bin/sh

# Capture script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Initialize the various children bundles
cd $DIR && git submodule init && git submodule update

# Install symlinks in user.home
cd $HOME

# Link aliases
for alias in `ls $DIR/.*_alias`; do
  ln -s $alias
done

# bash_profile
cat <<EOT >> .bash_profile
# Link to personal
source $DIR/.bash_profile-private
EOT

# bashrc
cat <<EOT >> .bashrc
# Link to personal
source $DIR/.bashrc-private
EOT

# git
ln -s $DIR/.gitconfig

# input
ln -s $DIR/.inputrc

# ruby
ln -s $DIR/.irbrc
ln -s $DIR/.pryrc

# tmux
ln -s $DIR/.tmux.conf

# vim
ln -s $DIR/.ackrc
ln -s $DIR/.vim
ln -s $DIR/.vimrc
