set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'


"define something myself"
"=====================set=====================   "
set number "show row number"
set tabstop=4 "set tab size"
set shiftwidth=4
set autoindent
set showmatch


"==============================================  "
syntax on  


"==============================================  "
"compile and run"
nnoremap <F5>   <Esc>:w<CR>:!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
"only compile"
nnoremap <F7>   <Esc>:w<CR>:!g++ -std=c++11 %<CR>
nnoremap <C-F5> <Esc>:w<CR>:!g++ -std=c++11 -g % -o /tmp/a.out && gdb /tmp/a.out<CR>


"input { auto indent"
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O


filetype plugin on
