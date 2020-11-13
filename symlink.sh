log_action() {
    echo "Creating a symbolic link from $1 to $2"
}

symlink() {
    log_action $1 $2
    rm -rf $2
    ln -s $1 $2
}

root_symlink() {
    from=$HOME/.dotfiles/$1/$2
    to=$HOME/.$2
    symlink $from $to
}

vim_symlink() {
    from=$HOME/.dotfiles/vim/symlink/$1
    to=$HOME/.vim/$1
    symlink $from $to
}

root_symlink zsh zshrc
root_symlink git gitconfig
root_symlink git gitignore
root_symlink vim vimrc
vim_symlink base.vim
vim_symlink nerdtree.vim
vim_symlink simpylfold.vim
vim_symlink YouCompleteMe.vim
vim_symlink syntastic.vim
