" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable
filetype plugin on
:let mapleader = ","

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
set ts=2
set shiftwidth=2
set rnu
set autoindent
set expandtab
set cursorline
set laststatus=2
set hidden
set autoread
set wildmenu
set ignorecase
set smartcase

set cinoptions=0
let c_space_errors=1

au BufRead,BufNewFile *.djhtml set filetype=htmldjango
au BufRead,BufNewFile *.hamstache set filetype=haml
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.arb set filetype=ruby
au BufRead,BufNewFile *.tex set filetype=tex

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
noremap <C-N> :CtrlP<CR>
set wildignore+=node_modules,env

" NERDTree mappings
map <F5> :NERDTreeFind<CR>

set foldmethod=indent
set foldlevelstart=999

" Some leader mappings
set pastetoggle=<F2>
map <Leader>t :BufExplorer<CR>
" Open a quick fix window on bottom
map <Leader>f :bo cw<CR>
map <Leader>w :OnlineThesaurusCurrentWord<CR>

" Syntastic
let g:syntastic_coffee_coffeelint_args="--csv -f ~/.coffeelintrc"
let g:syntastic_html_checkers=[]

" Close buffer without closing the window
nmap <silent> <Leader>c :bp\|bd #<CR>

nmap <silent> <Leader>g :GitGutterAll<CR>

" Load custom vimrc from pwd
if filereadable(".vim.custom")
    so .vim.custom
endif

" Disable slim syntax checker, hangs for some reason
let g:syntastic_slim_checkers=['']

set spelllang=en_gb
