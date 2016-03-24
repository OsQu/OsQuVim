" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable
filetype plugin on
:let mapleader = ","


" 256 colors and solarized
set t_Co=256
colorscheme solarized
set background=dark

" Hilight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:au BufWinEnter * let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)
:map <Leader>r :let w:m1=matchadd('ExtraWhitespace', '\s\+$', -1)<CR>

set colorcolumn=80
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

set foldmethod=indent
set foldlevelstart=999

" Some leader mappings
set pastetoggle=<Leader>p
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
