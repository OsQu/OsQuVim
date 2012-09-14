" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable

map!  <BS>
map! [4~ <End>
map <Tab> :bnext<CR>
map <S-Tab> :bprev<CR>

map å ^
map gå g^
set background=dark
set hlsearch
set nocompatible
set backspace=indent,eol,start
set ruler
set smartcase
set incsearch
set ts=4
set shiftwidth=4
set nu
set autoindent
set expandtab
set cursorline
set laststatus=2
set hidden
set autoread
set wildmenu

set cinoptions=0
let c_space_errors=1

" Oppiipaha olee
noremap! <Up> <nop>
noremap! <Down> <nop>
noremap! <Left> <nop>
noremap! <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" 256 colors
set t_Co=256

" Set django html filetypes
au BufRead,BufNewFile *.djhtml set filetype=htmldjango

" cpp tags
command CppTags execute "!ctags -R *.cpp *.h"

" ruby indention is 2
au FileType ruby set tabstop=2 shiftwidth=2
