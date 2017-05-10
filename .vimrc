"vim plug commands
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wesQ3/vim-windowswap'
call plug#end()

syntax on
set autoindent
set breakat&vim
set hlsearch
set expandtab
set ignorecase
set linebreak
set nocompatible
set nolist
set number
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set tabstop=2
set wrap

let g:netrw_banner=0
let mapleader=","
let &showbreak=repeat(' ',14)

" highlight trailing whitespaces
highlight ColorColumn ctermbg=7
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" display linenumbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" mappings
" --------
" toggle hlsearch
noremap <F12> :set hls! <cr>
" toggle colorcolumn
noremap <F10> :let &cc = &cc == '' ? '63,72,80' : ''<CR>
" rulers for exercism, some standard, ruby standard
" 63 -> exercism window width
" 72 -> a standard width
" 80 -> another standard width
