#!/bin/bash

# Homebrew
curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh" | bash

# Remove artifacts
rm -rf .oh-my-zsh
rm .zshrc
rm .gitconfig && rm .gitignore
rm .vimrc
rm .tmux.conf

# Re-enable bash as default shell
chsh -s /bin/bash

# Force exit
exit