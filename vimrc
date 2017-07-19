" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable
filetype plugin on
:let mapleader = ","
language en_GB

" 256 colors and solarized
set t_Co=256
colorscheme solarized
set background=dark

" Hilight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:au BufWinEnter * let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)
:map <Leader>r :let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)<CR>

set colorcolumn=100
:highlight ColorColumn ctermbg=0

map!  <BS>
map! [4~ <End>

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
set listchars=tab:>-,eol:$

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

" Easier CTags
map <Leader>e g<C-]>

" Tagbar bindings
map <Leader>s :TagbarToggle<CR>

" NERDTree mappings
map <Leader>d :NERDTreeFind<CR>

" Run Neomake!
map <Leader>m :Neomake!<CR>

set foldmethod=indent
set foldlevelstart=999

" Some leader mappings
set pastetoggle=<Leader>p
map <Leader>t :BufExplorer<CR>
" Open a quick fix window on bottom
map <Leader>f :bo cw<CR>
map <Leader>w :OnlineThesaurusCurrentWord<CR>

" Close buffer without closing the window
nmap <silent> <Leader>c :bp\|bd #<CR>

nmap <silent> <Leader>g :GitGutterAll<CR>

" Load custom vimrc from pwd
if filereadable(".vim.custom")
    so .vim.custom
endif

set spelllang=en_gb

" Limelight colors
let g:limelight_conceal_ctermfg = 'DarkGray'
let g:goyo_width = 83
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" NERDTree configuration
let NERDTreeIgnore = ['\.pyc$']

" Flow plugin
let g:flow#autoclose=1

" Solarized theme for airline
let g:airline_theme = 'dark'

" Airline truncate
let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'y', 'z']
    \ ]
" get out of :terminal's insert mode
:tnoremap <Esc> <C-\><C-n>

" Nifty replace macro
nmap <silent> <Leader>s :,$s/<C-r><C-w>/

" Neomake configs
autocmd! BufWritePost * Neomake " Run neomake on save

" Hdevtool bindings
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
" Flow bindings
au FileType javascript nnoremap <buffer> <F1> :FlowType<CR>

" Re-color symbols, highlight groups from :highlight
let g:neomake_warning_sign = {
  \ 'text': '✹',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': '✖',
  \ 'texthl': 'ErrorMsg',
  \ }
