# Atlas
The Primordial Titan who carried the weight of the heavens on his back.

A.K.A. my dotfiles.

## Setup
1. Clone this repo into `~/.dotfiles` directory.
```
git clone https://github.com/marques-j-robinson/atlas.git ~/.dotfiles && cd ~/.dotfiles
```
2. Execute `setup.sh`.
This script will install programs such as [Xcode](https://developer.apple.com/xcode/),
[Homebrew](https://brew.sh/), [Zsh](https://www.zsh.org/),
[Oh My Zsh](https://ohmyz.sh/), and [Vim Plug](https://github.com/junegunn/vim-plug).

3. Execute `brew.sh`.
This script will update Homebrew, upgrade existing formulae, then install formulae.

4. Execute `link.sh`.
This script will establish symbolic links between `~/.dotfiles` and the `$HOME` directory.

## Inspiration
Here are a few links to articles and repos that helped me get started:
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
- [dotfile inspiration](https://dotfiles.github.io/inspiration/)
- [thoughtbot dotfiles](https://thoughtbot.com/upcase/videos/intro-to-dotfiles)
- [holman dotfiles](https://github.com/holman/dotfiles)
- [apazzolini](https://github.com/apazzolini/dotfiles)
