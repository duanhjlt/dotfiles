#!/bin/bash

FOLDER=$(pwd)

if [ -d "$FOLDER/.git" ]; then
    rm -rf ~/.vimrc
    ln -s $FOLDER/.vimrc ~/.vimrc

    rm -rf ~/.spacemacs
    ln -s $FOLDER/.spacemacs ~/.spacemacs
fi

cd ~/.vim

if [ -d "./bundle/Vundle.vim" ];then
    echo "vundle for vim already installed"
else
    mkdir -p bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cd $FOLDER

