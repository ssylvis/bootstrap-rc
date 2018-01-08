# bootstrap-rc
Resource configuration files for a new workstation.

## Installation
    # Clone the bootstrap-rc repository in current directory
    git clone https://github.com/ssylvis/bootstrap-rc.git

    # Run install script
    ./bootstrap-rc/install.sh

### Adding Submodule
    cd bootstrap-rc
    git submodule add <github.com/module.git> </path/to/module>

## OSX Setup
### Developer Tools
[Homebrew](https://brew.sh/) (Package Manager)

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[Xcode](https://itunes.apple.com/us/app/xcode/id497799835) (App and Command-line Tools)

    xcode-select --install

### Apps
#### Google Protobuf

    brew install protobuf

#### PostgreSQL

    brew install postgres

#### Tmux

    brew install tmux

### Ruby Setup
[RVM](https://rvm.io/rvm/install) (Ruby Version Manager)

    \curl -sSL https://get.rvm.io | bash -s stable --ruby

ruby versions:

    rvm list known
    rvm install [version]

[Bundler](http://bundler.io/) (Gem Manager)

    gem install bundler

*Note* this has to be done once for each RVM installed version of ruby

### Sublime Text
[Sublime Text](https://www.sublimetext.com/)

Install Package Control (Ctrl + Shift + P, "Install Package Control"), then install the following packages
(*Package Control: Install Package*):
- GitGutter
- Solarized Color Scheme
- SyncedSideBar

## Dependencies
- [Ack.vim](https://github.com/mileszs/ack.vim) (vim): used as a regex pattern matcher
  (Note you may need to install ack on your system)
- [CoffeeScript.vim](https://github.com/kchmck/vim-coffee-script) (vim): adds support for CoffeeScript
- [commentary.vim](https://github.com/tpope/vim-commentary) (vim): easily (un)comment lines
- [Ctrlp.vim](https://github.com/kien/ctrlp.vim) (vim): used as a fuzzy file finder
- [NERDTree](https://github.com/scrooloose/nerdtree) (vim): file system explorer
- [Pathogen.vim](https://github.com/tpope/vim-pathogen) (vim): used to install bundles
- [Solarized](https://github.com/altercation/vim-colors-solarized) (vim): solarized color scheme
