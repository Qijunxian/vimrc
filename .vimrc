set termencoding=utf-8

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tell-k/vim-autopep8'
"
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
set nocompatible
set backspace=indent,eol,start
set number
set wrap! 
filetype on
set history=50
filetype plugin on
set background=dark
let python_highlight_all=1
syntax on
syntax enable
"set cursorline
set autoindent
set smartindent
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set smarttab
set showcmd
set showmode
set showmatch
"set vb t_vb=
set novb
set ruler
set hls
set incsearch
set cin
set mouse=a
set cindent
set sm
set ai
set ruler
set hlsearch
"set enc=utf-8
"set fenc=utf-8
"set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"if version > 603
"set helplang=cn
"endi
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
set tags+=~/.vim/stltags
set completeopt=longest,menu
set noundofile
autocmd FileType python setlocal noet sta sw=8 sts=8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set term=xterm

"only for secure crt, exit vim and don't left content on the screen
if &term =~ "linux"
    let &t_ti = "\<Esc>[?47h"
        let &t_te = "\<Esc>[?47l"
endif
"nmap <C-k> <ESC>:!cd server && sh reload.sh && cd - %<CR>
"nmap <C-k> <ESC>:!cd ../../tools/server_launcher/ && sh reload.sh && cd - %<CR>

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set encoding=utf-8

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let python_highlight_all=1
syntax on

"??????????
let g:ycm_complete_in_comments = 1
"???????????
let g:ycm_complete_in_strings = 1
"
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" ??????
set completeopt=longest,menu    "?Vim??????????IDE??(??VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "???????????????
set background=dark
colorscheme blackdust_modified

" 进入插入模式下的光标形状
let &t_SI.="\e[5 q"

" 进入替换模式下的光标形状
" let &t_SR.="\e[3 q"

" 从插入模式或替换模式下退出，进入普通模式后的光标形状
let &t_EI.="\e[1 q"

" 进入vim时，设置普通模式下的光标形状
autocmd VimEnter * silent !echo -ne "\e[1 q"

" 离开vim后，恢复shell模式下的光标形状
autocmd VimLeave * silent !echo -ne "\e[5 q"


"调用ag进行搜索
let g:ctrlsf_ackprg="ag"
map <C-F> :CtrlSF 
let g:ctrlsf_case_sensitive = 'no'
"let g:ctrlsf_extra_root_markers = ['.root']
let g:ctrlsf_default_root = 'cwd'
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_auto_close=0

nmap <c-c> "+y
