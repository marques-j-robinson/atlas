#!/bin/bash

# MacOS package manager (Homebrew)
curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install.sh" | bash
brew install coreutils

# Modern shell (ZSH & Oh My ZSH)
brew install zsh
curl -fsSL "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | bash
chsh -s /bin/zsh
zsh # Enter new ZSH shell