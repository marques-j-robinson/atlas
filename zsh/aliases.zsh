# Reload zshrc
alias szsh="source ~/.zshrc"

# Git
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gc="git commit"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcom="git checkout main"
alias glog="git log"
alias gst="git status"
alias gs="git stash"

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

njordtest() {
    python -m unittest discover -s Events/$1 -p "*$2_test.py"
}
