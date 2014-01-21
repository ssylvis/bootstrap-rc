bootstrap-rc
============
Resource configuration files for a new workstation.

Installation
------------
  # Clone the bootstrap-rc repository in current directory
  git clone https://github.com/ssylvis/bootstrap-rc.git

  # Initialize the various children bundles
  cd bootstrap-rc
  git submodule init
  git submodule update

Dependencies
------------
- [Ack.vim](https://github.com/mileszs/ack.vim) (vim): used as a regex pattern matcher
  (Note you may need to install ack on your system)
- [commentary.vim](https://github.com/tpope/vim-commentary) (vim): easily (un)comment lines
- [Ctrlp.vim](https://github.com/kien/ctrlp.vim) (vim): used as a fuzzy file finder
- [NERDTree](https://github.com/scrooloose/nerdtree) (vim): file system explorer
- [Pathogen.vim](https://github.com/tpope/vim-pathogen) (vim): used to install bundles
- [Solarized](https://github.com/altercation/vim-colors-solarized) (vim): solarized color scheme
