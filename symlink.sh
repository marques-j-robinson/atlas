#!/bin/bash

symlink() {
    module=$1
    filename=$2
    from=$HOME/.dotfiles/$module/$filename
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