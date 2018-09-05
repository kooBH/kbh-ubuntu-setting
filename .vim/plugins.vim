set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'

" at plugin folder
" git colne https://github.com/Valloric/YouCompleteMe.git
" then add Plugin 'Valloric/YouCompleteMe'
" sudo apt-get install clang
" ./install.py --clang-completer --system-libclang
" but you need to do submoulde something 
" YCM will tell you exact commend

call vundle#end()

filetype plugin indent on
