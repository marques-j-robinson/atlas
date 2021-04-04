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
3. Run install script. This script iterates through the directories and executes the `install` script.

## Notes

After installation, everything should be up-to-date and ready to be used.
From time to time, run the `dot` script located inside of `bin/`.

`dot` is a simple shell script that ensures the environment is fresh and up-to-date.

### Zsh
I am using [Zsh](https://www.zsh.org/) instead of Bash as the default shell.
For Zsh configuration management, I am using [Oh My Zsh](https://ohmyz.sh/).

The main Zsh config file is: `zsh/zshrc.symlink`.
There are a few paths that will be different per machine.

### Important Programs

[Homebrew](https://brew.sh/) is used to install things such as Zsh, Python, Google Chrome.

[iTerm2](https://iterm2.com/) is my preferred command-line application.

[Tmux](https://github.com/tmux/tmux/wiki) provides a nice way of working with the terminal.

[Neovim](https://neovim.io/) - primary text editor.

## Inspiration
Here are a few links to articles and repos that helped me get started:
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
- [dotfile inspiration](https://dotfiles.github.io/inspiration/)
- [thoughtbot dotfiles](https://thoughtbot.com/upcase/videos/intro-to-dotfiles)
- [holman dotfiles](https://github.com/holman/dotfiles)
- [apazzolini](https://github.com/apazzolini/dotfiles)