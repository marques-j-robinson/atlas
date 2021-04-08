#!/bin/bash

# Paths
PATH_BREW_INSTALL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
PATH_OMZ_INSTALL="https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh"
PATH_VIMPLUG_LOCAL=~/.local/share/nvim/site/autoload/plug.vim
PATH_VIMPLUG_INSTALL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

# Xcode
xcode-select --install

# Homebrew
if test ! $(which brew); then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL $PATH_BREW_INSTALL)"
else
    echo "Homebrew is already installed..."
fi


# Oh My Zsh
if [ -d $ZSH ]; then
    echo "Oh My Zsh is already installed..."
else
    echo "Installing Oh My Zsh..."
    /bin/bash -c "$(curl -fsSL $PATH_OMZ_INSTALL)"
fi

# Vim-Plug
echo "Installing Vim Plug..."
/bin/bash -c "$(curl -fLo $PATH_VIMPLUG_LOCAL --create-dirs $PATH_VIMPLUG_INSTALL)"