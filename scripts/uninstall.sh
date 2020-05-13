#!/bin/bash

# Homebrew
curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh" | bash

# Remove artifacts
rm -rf .oh-my-zsh
rm .zshrc
rm .gitconfig && rm .gitignore
rm .vimrc
rm .tmux.conf
rm -rf .nvm

chsh -s /bin/bash # Re-enable bash as default shell
exit # Force exit