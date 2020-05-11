#!/bin/bash

# Homebrew & Packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install coreutils
brew install zsh
brew install git
brew install vim
brew install tmux
brew install python

# Oh My Zsh
/bin/bash -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"