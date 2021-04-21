# git
alias gst="git s"
alias commit="git add . && git cm"

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
