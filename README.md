# Atlas
The Primordial Titan who carried the weight of the heavens on his back.

A.K.A. my dotfiles.

## Installation Steps
1. Clone this repo to `~/.dotfiles`. Everything is maintained within `~/.dotfiles`.
```
git clone https://github.com/marques-j-robinson/atlas.git ~/.dotfiles && cd ~/.dotfiles
```

2. Run boostrap script.
This will setup some configs for git and symlink the appropriate files in `~/.dotfiles` to your home directory.
```
script/bootstrap
```

3. Run install script. This script iterates through the directories and executes the `install` script.
```
script/install
```

## Homebrew
[Documentation](https://brew.sh/)

I use Homebrew to install things such as Zsh, Python, Google Chrome.

## Zsh
I am using [Zsh](https://www.zsh.org/) instead of Bash as the default shell.
For Zsh configuration management, I am using [Oh My Zsh](https://ohmyz.sh/).

The main Zsh config file is: `zsh/zshrc.symlink`.
There are a few paths that will be different per machine.

## Atlas
Atlas is a simple shell script that is located inside of `bin/`.
This should be run occassionally to ensure that the environment is fresh and up-to-date.


## Inspiration
Here are a few links to articles and repos that helped me get started:
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
- [dotfile inspiration](https://dotfiles.github.io/inspiration/)
- [thoughtbot dotfiles](https://thoughtbot.com/upcase/videos/intro-to-dotfiles)
- [holman dotfiles](https://github.com/holman/dotfiles)
- [apazzolini](https://github.com/apazzolini/dotfiles)