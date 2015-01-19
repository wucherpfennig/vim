" ------------------------
" pathogen settings
" ------------------------

execute pathogen#infect()
Helptags
" assoc drupal files to php
  if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" php completion and settings
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let php_sql_query=1                           
let php_htmlInStrings=1

set t_Co=256
syntax enable
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized
" colorscheme distinguished
colorscheme zenburn
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
set number

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
set textwidth=80
set formatoptions=qrn1
set colorcolumn=81

" reduce delay on esc
set timeoutlen=200

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

" use jk in autocompletion box
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" NERDTree Toggle
nmap <C-n> :NERDTreeTabsToggle<CR>

" Tagbar Toggle
nmap <C-y> :TagbarToggle<CR>

" Natural Window Movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ------------------------
" Different Cursor Shapes depending on Current Mode
" ------------------------

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Super Tab Settings
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabClosePreviewOnPopupClose = 1

" NERDTree Settings
let g:NERDTreeShowHidden=1

" Tagbar Settings
let g:tagbar_width = 55

" CtrlP Settings
:let g:ctrlp_max_files=0
