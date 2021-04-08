export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/bin/python3
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.dotfiles/zsh

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dotenv themes)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

function sv() {
    source venv/bin/activate &&  # commented out by conda initialize
    tmux set-environment VIRTUAL_ENV $VIRTUAL_ENV
}
if [ -n "$VIRTUAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activate;  # commented out by conda initialize
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/themelowone/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
# else
#    if [ -f "/Users/themelowone/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/themelowone/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/themelowone/anaconda3/bin:$PATH"
#    fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

