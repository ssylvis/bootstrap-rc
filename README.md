bootstrap
=========
Configuration files for a new workstation.

Installation
------------
    # Clone the bootstrap repository
    cd bootstrap
    git clone https://github.com/ssylvis/bootstrap.git

    # Initialize the various children bundles
    git submodule init
    git submodule update

Dependencies
------------
- [Pathogen.vim](https://github.com/tpope/vim-pathogen) (vim): used to install bundles
- [Ctrlp.vim](https://github.com/kien/ctrlp.vim) (vim): used as a fuzzy file finder
- [Ack.vim](https://github.com/mileszs/ack.vim) (vim): used as a regex pattern matcher
  (Note: you may need to install ack on your system)
- [Solarized](https://github.com/altercation/vim-colors-solarized) (vim): solarized color scheme
