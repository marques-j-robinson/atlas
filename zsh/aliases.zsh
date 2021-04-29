# Reload zshrc
alias szsh="source ~/.zshrc"

# tmux
alias t="tmux -u -2"
alias ta="t attach -t"
alias td="t detach"
alias tks="t kill-session"

# vim
alias v=nvim
alias vi=nvim
alias vim=nvim
alias vf='nvim "$(fzf)"'
alias vrc='nvim -c "cd ~/.dotfiles" -- ~/.dotfiles/nvim/init.vim'

# python
alias python=python3
alias pip=pip3
alias svenv="source venv/bin/activate"
alias pyta='python -m unittest discover -p "*_test.py"'

# Enable aliases to be ran as sudo
alias sudo="sudo "

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Flush the DNS
alias dnsflush="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# Directory listings
alias ls="ls -G -h -p"
alias ll="ls -l -G -h -p"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Print each PATH entry on a separate line
alias path="echo -e ${PATH//:/\\n}"

# Homestead
alias homestead='function __homestead() {
    if [[ $@ == "config" ]]; then
        command open ~/Homestead/Homestead.yaml
    else
        (cd ~/Homestead && vagrant $*);
    fi
}; __homestead'

# Composer link
composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}
