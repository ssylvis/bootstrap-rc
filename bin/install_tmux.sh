# install dependencies
sudo apt-get install -y libevent-dev libncurses5-dev

# download latest
VERSION=3.1
wget https://github.com/tmux/tmux/releases/download/$VERSION/tmux-$VERSION.tar.gz

# make from source
tar xvf tmux-$VERSION.tar.gz
cd tmux-$VERSION
./configure && make
sudo make install
