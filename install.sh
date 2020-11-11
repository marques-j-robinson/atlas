#!/bin/zsh

# Overview of installation steps:

## 1. Homebrew
## 2. ZSH and Oh-My-Zsh
## 3. Git

# Custom symlink function

## Function for creating symbol links from the .dotfiles directory to the user root directory
## $1 - folder_name Ex: vim
## $2 - file_name Ex: vimrc

symlink() {
    from=$HOME/.dotfiles/$1/$2
    to=$HOME/.$2
    rm -rf $to
    ln -s $from $to
}

# 1. Homebrew

if ! type "brew" > /dev/null; then
    echo "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew is already installed. Skipping..."
fi

brew update
brew upgrade

brew install curl wget git tmux python

# 2. ZSH and Oh-My-Zsh

if [ -d $ZSH ]; then
    echo "Oh My Zsh is already installed. Skipping..."
else
    echo "Installing Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

symlink zsh zshrc

# 3. Git

echo "Configure global Git settings..."
symlink git gitconfig
symlink git gitignore

## END
