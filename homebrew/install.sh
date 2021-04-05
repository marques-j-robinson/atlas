#!/bin/bash

# Check for Homebrew
if test ! $(which brew)
then
    echo " Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

# Those that come with macOS are outdated
brew install coreutils

# Development
brew install \
    awscli \
    git \
    neovim \
    node \
    python \
    tmux \
    yarn \
    zsh    

# Applications
brew install --cask \
    1password \
    1password-cli \
    firefox \
    google-chrome \
    iterm2 \
    slack \
    zoom

brew cleanup

exit 0