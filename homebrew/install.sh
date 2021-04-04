#!/bin/bash

# Check for Homebrew
if test ! $(which brew)
then
    echo " Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

exit 0