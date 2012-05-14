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
" Change statusline color according to input mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

