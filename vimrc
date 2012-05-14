" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable

map!  <BS>
map! [4~ <End>
map <Tab> :bnext<CR>
map <S-Tab> :bprev<CR>
nmap <C-N> :FufCoverageFile<CR>

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

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Oppiipaha olee
noremap! <Up> <nop>
noremap! <Down> <nop>
noremap! <Left> <nop>
noremap! <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

