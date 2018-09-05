#!/bin/sh

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
sudo apt-get install git
sudo apt-get install vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo cp -r ./.vim ~/.vim/
sudo cp .vimrc ~/.vimrc

sudo vim +PluginInstall
