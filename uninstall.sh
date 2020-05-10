#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

# Clean up zsh artifacts
rm -rf .oh-my-zsh
rm .zshrc

# Set bash
chsh -s /bin/bash