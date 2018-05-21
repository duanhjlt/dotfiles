#!/bin/bash

FOLDER=$(pwd)

if [ -d "$FOLDER/.git" ]; then
    rm -rf ~/.vimrc
    ln -s $FOLDER/.vimrc ~/.vimrc 
fi

if [ -d "~/.vim/bundle/Vundle.vim" ] ; then
    echo "vundle for vim already installed"
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
