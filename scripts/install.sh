#!/bin/bash

## Load utility functions
## Note: UTILITY_PATH is relative to the download location for the dotfiles directory
UTILITY_PATH=$HOME/.dotfiles/scripts
source $UTILITY_PATH/utilities.sh

# 1. Git

## Create symbol links between gitconfig and gitignore files for global settings
echo "Setting up global Git settings"
symlink git gitconfig
symlink git gitignore

# 2. Install Oh-My-Zsh

ZSH=~/.oh-my-zsh

if [ -d $ZSH ]; then
    echo "Oh My Zsh is already installed. Skipping..."
else
    echo "Installing Oh My Zsh..."
    curl -L http://install.ohmyz.sh | sh
    symlink zsh zshrc
fi

# 3. Install NVM

if ! type "nvm" > /dev/null; then
    echo "Installing NVM..."
    curl -fsSL "https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh " | bash
    export NVM_DIR="/Users/marquesrobinson/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
else
    echo "NVM is already installed. Skipping..."
fi

# 4. Install Homebrew

if ! type "brew" > /dev/null; then
    echo "Installing Homebrew..."
    curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install.sh" | bash
else
    echo "Homebrew is already installed. Skipping..."
fi

# 5. Homebrew packages

echo "Checking for Homebrew updates..."
brew update

echo "Checking for upgrades to existing Homebrew packages..."
brew upgrade

echo "Installing new packages..."
brew install tmux
brew install python
brew install kafkacat
brew install yarn
brew uninstall --ignore-dependencies node

# 6. Legacy Node version for MVPindex

echo "Installing Node version 8 for legacy MVPindex platform"

## Ensure the nvm command is available
# source $HOME/.zshrc
nvm install 8
## Link the newly installed version of node to /local/Cellar (Homebrew path)
## so yarn has access to version 8 of node
ln -s $HOME/.nvm/versions/node/ /usr/local/Cellar/

# 7. Install awslogs for cloudwatch logging

pip install awslogs
npm install -g bunyan

## END