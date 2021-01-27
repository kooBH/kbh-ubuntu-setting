#!/bin/bash


sudo apt-get install -y htop
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y tmux

sudo apt-get install -y build-essential cmake


sudo apt-get install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -r .vim/* ~/.vim/
cp .vimrc ~/

sudo apt-get install -y zsh
