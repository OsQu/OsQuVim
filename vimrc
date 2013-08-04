" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable

set background=dark

" 256 colors and solarized
set t_Co=256
colorscheme solarized

" Hilight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:au BufWinEnter * let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)
:map <F6> :let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)<CR>

set colorcolumn=80
:highlight ColorColumn ctermbg=0

map!  <BS>
map! [4~ <End>
map <Tab> :bnext<CR>
map <S-Tab> :bprev<CR>

map å ^
map gå g^
set hlsearch
set nocompatible
set backspace=indent,eol,start
set ruler
set smartcase
set incsearch
set ts=4
set shiftwidth=4
set rnu
set autoindent
set expandtab
set cursorline
set laststatus=2
set hidden
set autoread
set wildmenu

set cinoptions=0
let c_space_errors=1

" Set django html filetypes
au BufRead,BufNewFile *.djhtml set filetype=htmldjango
au BufRead,BufNewFile *.hamstache set filetype=haml
au BufRead,BufNewFile *.coffee set filetype=coffee

" ruby indention is 2
au FileType ruby set tabstop=2 shiftwidth=2
au FileType coffee set tabstop=2 shiftwidth=2
au FileType eruby set tabstop=2 shiftwidth=2

" Auto close / skip brackets and parenthis
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap        {  {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" Command-T mapping
noremap <C-N> :CommandT<CR>
set wildignore+=node_modules,env

" NERDTree mappings
map <F5> :NERDTreeFind<CR>

set foldmethod=indent
