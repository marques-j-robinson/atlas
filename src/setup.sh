#!/bin/bash

# Create directories
mkdir ~/github

# Symlink
symlink() {
    module=$1
    filename=$2
    from=$HOME/.dotfiles/src/$module/$filename
    to=$HOME/.$filename
    echo "$from --> $to"
    rm -rf $to
    ln -s $from $to
}

symlink zsh zshrc
symlink git gitconfig
symlink git gitignore
symlink vim vimrc
symlink tmux tmux.conf