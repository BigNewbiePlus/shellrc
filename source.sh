#!/bin/bash
set -e

SHELLEXE_PATH=$(cd `dirname $0`; pwd)

cat $SHELLEXE_PATH/dotfiles/zshrc > ~/.zshrc
cat $SHELLEXE_PATH/dotfiles/tmux.conf > ~/.tmux.conf
cat $SHELLEXE_PATH/dotfiles/basic.vim > ~/.vimrc

source ~/.zshrc
source ~/.vimrc
tmux source ~/.tmux.conf

echo "Installed the Basic Vim cinfiguration successfully! Enjoy :-)"