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
fi