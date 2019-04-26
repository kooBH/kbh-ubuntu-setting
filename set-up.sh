#!/bin/sh

# Packages
sudo apt-get --assume-yes install build-essential cmake
sudo apt-get --assume-yes install python-dev python3-dev
sudo apt-get --assume-yes install git
sudo apt-get --assume-yes install vim

### vim
sudo apt-get --assume-yes install vim-gnome

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo cp -r .vim/* ~/.vim/
sudo cp .vimrc ~/.vimrc

git clone https://github.com/Valloric/YouCompleteMe.git

sudo apt-get --asume-yes install clang
sudo aptg-et --asume-yes install python
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --system-libclang
./install.sh
cd ..
mv YouCompleteMe ~/.vim/bundle/

sudo vim +PluginInstall

### tmux

sudo apt-get --assume-yes install tmux
sudo apt-get --assume-yes install xclip

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp .tmux.conf ~/.tmux.conf

echo "prefix + 'I' at tmux to install tmux-resurrect"
