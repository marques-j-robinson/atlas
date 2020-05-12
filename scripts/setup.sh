#!/bin/bash

# Function for creating symbol links from the
# .dotfiles directory to the user root directory
# $1 - folder_name
# $2 - file_name
symlink() {
    from=$HOME/.dotfiles/$1/$2
    to=$HOME/.$2
    rm -rf $to
    ln -s $from $to
}

# ZSH
symlink zsh zshrc

# Git
mkdir $HOME/github # Create base GitHub directory
brew install git
symlink git gitconfig
symlink git gitignore

# Terminal utilities
brew install vim
brew install tmux
symlink vim vimrc
symlink tmux tmux.conf

# Python version 3
brew install python

# Node (https://github.com/nijicha/install_nodejs_and_yarn_homebrew)
mkdir $HOME/.nvm
brew install nvm
source $HOME/.zshrc # Make nvm command available
nvm install 8
brew install yarn
brew uninstall --ignore-dependencies node
ln -s $HOME/.nvm/versions/node/ /usr/local/Cellar/