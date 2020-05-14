#!/bin/bash

## Function for creating symbol links from the .dotfiles directory to the user root directory
## $1 - folder_name Ex: vim
## $2 - file_name Ex: vimrc
symlink() {
    from=$HOME/.dotfiles/$1/$2
    to=$HOME/.$2
    rm -rf $to
    ln -s $from $to
}

## END