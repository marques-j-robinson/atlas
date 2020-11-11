#!/bin/zsh

# Overview of installation steps:

## 1. Homebrew
## 2. ZSH and Oh-My-Zsh
## 3. Git
## 4. Vim

# Custom symlink function

## Function for creating symbol links from the .dotfiles directory to the user root directory
## $1 - folder_name Ex: vim
## $2 - file_name Ex: vimrc

symlink() {
    from=$HOME/.dotfiles/$1/$2
    to=$HOME/.$2
    echo "Creating a symbolic link from $from to $to"
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

brew install curl wget git tmux python3 vim

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

# 4. Vim

echo "Installing Vundle, Vim package manager..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

symlink vim vimrc

## END
