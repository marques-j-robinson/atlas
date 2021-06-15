#!/bin/bash

base=~/.dotfiles

function link {
    src=$base/$1
    dst=$2
    ln -sfv "$src" "$dst"
}

function env_setup {
    # git
    link git/.gitconfig ~
    link git/.gitignore ~

    # neovim
    mkdir -p ~/.config
    mkdir -p ~/.local/share/nvim
    link nvim ~/.config/nvim
    link nvim/plugged ~/.local/share/nvim/plugged

    # zsh
    link zsh/.zshrc ~
}

env_setup
