set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
" sudo apt-get install clang
" ./install.py --clang-completer --system-libclang

call vundle#end()

filetype plugin indent on
