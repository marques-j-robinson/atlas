#!/bin/zsh

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

# 3. Vim

echo "Installing Vundle, Vim package manager..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## END