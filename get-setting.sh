#!/bin/sh

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
sudo apt-get install git

sudo cp -r ./.vim ~/.vim/
sudo cp .vimrc ~/.vimrc

vim +PluginInstall
