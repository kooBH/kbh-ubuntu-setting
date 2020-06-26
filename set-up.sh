#!/bin/sh

###
sudo apt-get -y htop

# gnome-tweak-tool -> Typing -> Ctrl Key Position -> Caps Lock as Ctrl
sudo apt-get -y install gnome-tweak-tool

# Packages
sudo apt-get --assume-yes install build-essential cmake
sudo apt-get --assume-yes install git-core
sudo apt-get -y install clang
sudo apt-get -y install build-essential cmake

# Python 
sudo apt-get --assume-yes install python-dev python3-dev
sudo apt-get --assume-yes install python-pip python3-pip
pip install --upgrade pip
sudo python3 -m pip install future


### vim
sudo add-apt-repository ppa:jonathonf/vim 
sudo apt update
sudo apt-get --assume-yes install vim
sudo apt-get --assume-yes install vim-gnome

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo cp -r .vim/* ~/.vim/
sudo cp .vimrc ~/.vimrc

./ycm.sh

# echo $(which python)

### tmux

sudo apt-get --assume-yes install tmux
sh install_tmux.sh
sudo apt-get --assume-yes install xclip

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp .tmux.conf ~/.tmux.conf

echo "prefix + 'I' at tmux to install tmux-resurrect"

cat append.sh >> ~/.profile

### zsh

sudo apt-get -y install zsh
chsh -s /usr/bin/zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

###
# Always On Top command : 
# https://www.maketecheasier.com/keyboard-shortcut-for-always-on-top-ubuntu/
# setting -> keyboard -> shortcuts -> Custom shortcuts -> + 
# command |  wmctrl -r :ACTIVE: -b toggle,above
sudo apt-get install -y wmctrl

###

sudo vim +PluginInstall

