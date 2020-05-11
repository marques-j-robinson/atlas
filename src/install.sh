#!/bin/bash

# Homebrew & Packages
curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install.sh" | bash

brew install coreutils
brew install zsh
brew install git
brew install vim
brew install tmux
brew install python

# Oh My Zsh
curl -fsSL "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | bash