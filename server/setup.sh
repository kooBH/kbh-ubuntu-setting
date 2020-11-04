#! /bin/bash

# latested YouCompleteMe requires vim 8.1 or higher
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

mkdir ~/.vim
cp -r ../.vim/* ~/.vim/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ../.vimrc ~/.vimrc


vim +PluginInstall
