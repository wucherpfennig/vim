" ------------------------
" pathogen settings
" ------------------------

set t_Co=256
execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on

" ------------------------
" options
" ------------------------

" disable old vi backward compatibily stuff
set nocompatible

" prevent security leaks
set modelines=0

" always show current mode
set showmode

" always show entered commands
set showcmd

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" better case sensitive search
set ignorecase
set smartcase

" show relative line numbers
set relativenumber

" enable auto indent
set autoindent

" better command line completion
set wildmenu

" visualbell instead of beeping
set visualbell

" visual helping finding cursor
set cursorline

" improve smoothness
set ttyfast

" handle long lines correctly
set wrap
set textwidth=119
set formatoptions=qrn1
set colorcolumn=120

" ------------------------
" key mapping
" ------------------------

" disable arrow keys in all modes
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" ------------------------
" Different Cursor Shapes depending on Current Mode
" ------------------------

" KDE Konsole & iTerm2 OSX
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
