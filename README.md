# bootstrap-rc
Resource configuration files for a new workstation.

## Installation
    # Clone the bootstrap-rc repository in current directory
    git clone https://github.com/ssylvis/bootstrap-rc.git

    # Run install script
    ./bootstrap-rc/bin/install.sh

### Adding Submodule
    cd bootstrap-rc
    git submodule add <github.com/module.git> </path/to/module>

## General Setup
See [macOS](#macos-setup) or [Linux](#linux-setup) for platform-specific instructions.

### Node.js
Setup [nvm](https://github.com/nvm-sh/nvm)

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

Setup Node.js

    nvm ls
    nvm install [version]

### Ruby
Setup one of the following Ruby version managers, `rbenv` or `rvm`.

#### Rbenv
Setup in [macOS](#rbenv-macos) or [linux](#rbenv-linux).

#### RVM
[RVM](https://rvm.io/rvm/install) (Ruby Version Manager)

    \curl -sSL https://get.rvm.io | bash -s stable --ruby

ruby versions:

    rvm list known
    rvm install [version]

#### Bundler
[Bundler](http://bundler.io/) (Gem Manager)

    gem install bundler

*Note* this has to be done once for each RVM installed version of ruby

## OSX Setup
See also https://sourabhbajaj.com/mac-setup.

### Developer Tools
[Homebrew](https://brew.sh/) (Package Manager)

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[Xcode](https://itunes.apple.com/us/app/xcode/id497799835) (App and Command-line Tools)

    xcode-select --install

### Git
#### Bash-Completion

    brew install bash-completion
    curl -o /usr/local/etc/bash_completion.d/git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

#### [(Git)Hub](https://hub.github.com/)

    brew install hub

Add this to your ~/.bashrc

    eval "$(hub alias -s)"

#### GitHub Enterprise
Whitelist your GHE hostname

    git config --global --add hub.host my.example.org

#### Merge
Using [vimdiff](http://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/) as a diff tool:

    git config --global merge.tool vimdiff
    git config --global merge.conflictstyle diff3
    git config --global mergetool.prompt false

### Rbenv (macOS)
[rbenv](https://github.com/rbenv/rbenv)

    brew install rbenv
    rbenv init

### Tmux

    brew install tmux

### Vim
`vi` is installed as part of Xcode but this adds support for `mouse_sgr` (mouse selection for >233 columns)

    brew install vim

## Linux Setup
### Rbenv (Linux)
[rbenv](https://github.com/rbenv/rbenv)

    apt-get install rbenv
    mkdir -p "$(rbenv root)"/plugins
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

### Tmux
Many Linux distos are on an older verison of tmux. Run `install_tmux.sh` to install the latest version of tmux.

    cd bootstrap-rc/
    ./bin/install_tmux.sh

## Editors
### [Sublime Text](https://www.sublimetext.com/)

Install Package Control (Ctrl + Shift + P, "Install Package Control"), then install the following packages
(*Package Control: Install Package*):
- GitGutter
- Solarized Color Scheme
- SyncedSideBar

### Vim
#### Ack
Ack is used as a faster alternative to grep.

    brew install ack

#### Plugins
The following plugins are installed as part of this bootstrap:
- [Ack.vim](https://github.com/mileszs/ack.vim): faster alternative to grep
- [CoffeeScript.vim](https://github.com/kchmck/vim-coffee-script): adds support for CoffeeScript
- [commentary.vim](https://github.com/tpope/vim-commentary): easily (un)comment lines
- [Ctrlp.vim](https://github.com/kien/ctrlp.vim): used as a fuzzy file finder
- [indentLine](https://github.com/Yggdroot/indentLine): shows vertical lines for each indent level
- [NERDTree](https://github.com/scrooloose/nerdtree): file system explorer
- [Pathogen.vim](https://github.com/tpope/vim-pathogen): used to install bundles
- [Solarized](https://github.com/altercation/vim-colors-solarized): solarized color scheme

### Visual Studio Code
Recommended for Javascript/Typescript or Ruby development. The standard install works well, but you will want to add the
following extensions:

**Ruby**

    gem install ruby-debug-ide
    gem install solargraph
