#!/bin/sh

# gnome-tweak-tool -> Typing -> Ctrl Key Position -> Caps Lock as Ctrl
sudo apt-get -y install gnome-tweak-tool

# Packages
sudo apt-get --assume-yes install build-essential cmake
sudo apt-get --assume-yes install git-core
sudo apt-get -y install clang
sudo apt-get -y install build-essential cmake

# Python 
sudo apt-get --assume-yes install python-dev python3-dev
sudo apt-get --assume-yes install python-pip
pip install --upgrade pip


### vim
sudo apt-get --assume-yes install vim
sudo apt-get --assume-yes install vim-gnome

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo cp -r .vim/* ~/.vim/
sudo cp .vimrc ~/.vimrc

./ycm.sh

# echo $(which python)

### tmux

#sudo apt-get --assume-yes install tmux
sh install_tmux.sh
sudo apt-get --assume-yes install xclip

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp .tmux.conf ~/.tmux.conf

echo "prefix + 'I' at tmux to install tmux-resurrect"

cat append.sh >> ~/.profile

###

sudo vim +PluginInstall
