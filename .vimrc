set nocompatible
set enc=utf-8

syntax on
filetype plugin indent on

" set tab width to 4 spaces
set softtabstop=4 tabstop=8 shiftwidth=4 expandtab

" autoindent
set autoindent smartindent smarttab

" show ruler
set number ruler

" normal backspace
set backspace=indent,eol,start

" disable bell
set vb t_vb=""

" terminal uses dark
set bg=dark

" menu completion
set wildmenu

" auto clipboard
set clipboard=unnamed

" pad the screen
set scrolloff=12

" show current line and max col indicators
set cursorline colorcolumn=101

" enable mouse support
set mouse=a

" use highlight + smart search
set hlsearch ignorecase smartcase

" add extra space at bottom of screen and show command
set laststatus=2 showcmd

" make timeout 250ms and ttimeout 50ms
set timeoutlen=250 ttimeoutlen=50

" aliases
cnoreabbrev fle s/\s\+$//

" easier to access exit insert mode
inoremap <S-CR> <Esc>
inoremap jj <Esc>

" don't yank on <Delete>
noremap <Delete> "_x

" set the leader to be <Space>
" here bind <Space> instead of directly setting leader so that showcmd displays a \
let mapleader = "\\"
nmap <Space> \
vmap <Space> \

" binding for indentation
function <SID>PerformIndentation(c, char) range
    let op = getpos('.')
    for line in range(a:firstline, a:lastline)
        execute "normal! ".line."gg0f".a:char.a:c."i \<Esc>d".a:c."|<CR>"
    endfor
    call setpos('.', op)
endfunction
nnoremap <expr> <Leader>, ':<C-U>call <SID>PerformIndentation(v:count, nr2char(getchar()))<CR>'
vnoremap <expr> <Leader>, ':call <SID>PerformIndentation(v:count, nr2char(getchar()))<CR>'

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

" nullify certain mouse buttons
set <F13>=[25~
set <F14>=[26~
set <F15>=[27~
set <F16>=[28~

map! <F13> <Nop>
map! <F14> <Nop>
map! <F15> <Nop>
map! <F16> <Nop>
