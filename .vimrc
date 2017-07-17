set nocompatible
set enc=utf-8

syntax on
filetype plugin indent on

" set tab width to 4 spaces
set tabstop=4 shiftwidth=4

" use spaces instead of tabs
set expandtab

" automatically indent
set autoindent startindent smarttab

" show line numbers and columns
set number ruler

" normal backspace
set backspace=indent,eol,start

" disable bell and visual bell
set vb t_vb=""

" terminal uses a dark colorscheme
set bg=dark
set guifont=Envy\ Code\ R\ for\ Powerline\ 10

" better command completion
set wildmenu

" pad the screen
set scrolloff=12

" show current line and max col indicators
set cursorline colorcolumn=81

" enable mouse support
set mouse=a

" use highlight + smart search
set hlsearch ignorecase smartcase

" add extra space at bottom of screen
set laststatus=2

" aliases
cnoreabbrev fle s/\s\+$//

" titlebar
autocmd BufEnter * let &titlestring = $USER . '@' . hostname() . ': editing ' . expand('%')

" custom colorization
hi CursorLine cterm=NONE ctermbg=0
hi CursorLineNr cterm=bold ctermbg=0 ctermfg=15
hi LineNr ctermfg=7
hi Todo cterm=bold ctermfg=1 ctermbg=0

" airline options
let g:airline_theme='cool'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
