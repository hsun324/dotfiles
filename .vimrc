set nocompatible

set enc=utf-8

set mouse=a

set relativenumber number cursorline
set scrolloff=10

set wildmenu

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab backspace=2
set ruler
set hlsearch incsearch ignorecase smartcase

set background=dark
set guifont=Envy\ Code\ R\ for\ Powerline\ 10

syntax on

let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Settings for Airline
set laststatus=2
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
