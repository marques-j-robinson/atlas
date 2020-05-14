#!/bin/bash

## Load utility functions
## Note: UTILITY_PATH is relative to the download location for the dotfiles directory
UTILITY_PATH=$HOME/.dotfiles/scripts
source $UTILITY_PATH/utilities.sh

# 1. Git

## Create symbol links between gitconfig and gitignore files for global settings
symlink git gitconfig
symlink git gitignore