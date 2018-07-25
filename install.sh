#!/bin/bash
set -e

PREFIX_PATH=$(cd `dirname $0`; pwd)

# install oh my zsh
if [ ! -d $HOME/.oh-my-zsh/ ]; then
    echo 'there is no oh-my-zsh, now install!'
    sudo apt-get install -y zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# install Vundle Plugin Manager
if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then # if not exist bundle
    echo 'there is no vundle, now install!'
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# install Molokai Color Scheme for Vim
if [ ! -f $HOME/.vim/colors/molokai.vim ]; then # if not exist bundle
    echo 'there is no molokai scheme, now install!'
    git clone https://github.com/tomasr/molokai.git && cp molokai/colors/molokai.vim $HOME/.vim/colors && rm -rf molokai
fi

cat $PREFIX_PATH/dotfiles/zshrc > $HOME/.zshrc
cat $PREFIX_PATH/dotfiles/tmux.conf > $HOME/.tmux.conf
cat $PREFIX_PATH/dotfiles/basic.vim > $HOME/.vimrc

echo "Installed the Basic Vim cinfiguration successfully! Enjoy :-)"
