#!/bin/sh

sudo apt-get --assume-yes install build-essential cmake
sudo apt-get --assume-yes install python-dev python3-dev
sudo apt-get --assume-yes install git
sudo apt-get --assume-yes install vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo cp -r .vim/* ~/.vim/
sudo cp .vimrc ~/.vimrc

sudo vim +PluginInstall

git clone https://github.com/Valloric/YouCompleteMe.git

sudo apt-get --asume-yes install clang
sudo aptg-et --asume-yes install python
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --system-libclang
./install.sh
cd ..
mv YouCompleteMe ~/.vim/bundle/
sed -i "s/%YCM%/Plugin\ 'Valloric\/YouCompleteMe'/g" ~/.vim/plugin.vim


