" vim plug commands
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
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
set laststatus=2
set linebreak
set nocompatible
set nolist
set number
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set t_Co=256
set tabstop=2
set wrap

let mapleader=","
let &showbreak=repeat(' ',14)

" allow for autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" highlight trailing whitespaces
highlight ColorColumn ctermbg=7
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" airline config
" --------------
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
"" airline font symbol fixup
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"" airline unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
"" airline section config
let g:airline_section_x =  ''
let g:airline_section_y =  ''

" netrw config
" ------------
"" show banner
let g:netrw_banner=1
"" display linenumbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" MAPPINGS
" --------
" toggle hlsearch
noremap <F8> :set hls! <cr>
" rulers for exercism, some standard, ruby standard
"" 63 -> exercism window width
"" 72 -> a standard width
"" 80 -> another standard width
noremap <F9> :let &cc = &cc == '' ? '63,72,80' : ''<CR>
" Move window to next/previous Tab
source ~/.tabmover.vim
noremap <F5> :call MoveToPrevTab()<CR>
noremap <F6> :call MoveToNextTab()<CR>
