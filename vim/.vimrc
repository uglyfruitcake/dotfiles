execute pathogen#infect()
set background=light
colorscheme solarized
filetype plugin indent on
syntax on

let mapleader = ","

"sets relative line numbers
set relativenumber 

"prompts before quitting unsaved file
set confirm

"better search
set ignorecase
set smartcase

" disables arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"sort tabs
set tabstop=4
set shiftwidth=4
set expandtab

"we don't need backups because of git
set nobackup
set nowritebackup
set noswapfile

"This makes vim show the current row and column at the bottom right of the screen
set ruler

"Sets autoindent
set autoindent

"sort tabs
set tabstop=4
set shiftwidth=4
set expandtab

"sorts out backspace
set backspace=indent,eol,start

"so we don't need to press shift to get into command mode
nnoremap ; :
vnoremap ; :

"So we don't have to reach for escape to leave insert mode.
inoremap jf <esc>

