set nocompatible " sanely reset global .vimrc options
set encoding=utf-8 " use utf-8 internally
set termencoding=utf-8 " ignore terminal encoding
set hidden " allow to switch from an unsaved buffer and keep undo history
set ttyfast " act as it is fast terminal connection for smooth rendering

set noerrorbells " turn off beeps and flashes (alternative way below)
" set visualbell
" set t_vb=

set mouse=a " enable mouse for all modes
set backspace=indent,eol,start " normal backspace
set wildmenu " better command-line completion
set showcmd " show incomplete commands

set history=150 " keep more commands in history than default 20
set colorcolumn=80
set ruler " show the cursor position all the time
set number " show line numbers
set laststatus=2 " always display the status line
set statusline=%<%f%h%m%r%=%b\ 0x%B\ %l,%c%V\ format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %P
" set cmdheight=2 " set the command window height to 2 lines

set incsearch " do incremental search
set hlsearch " highlight all search matches
set ignorecase " case insensitive search
" clear search highlight on redraw screem
nnoremap <C-L> :nohl<CR><C-L>

set clipboard=unnamedplus " use global clipboard
" but don't put there deletions. Put them into far away clipboard
nnoremap d "xd
vnoremap d "xd

" hide menus and widgets in GUI
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" expand all table except for .go files
set expandtab
autocmd BufNewFile,BufRead  *.go set noexpandtab

set autoindent
" set default shiftwidth and softtabstop to 4
set ts=4
set sw=4

autocmd BufNewFile,BufRead  *.sql set ts=2 sw=2
autocmd BufNewFile,BufRead  *.js set ts=2 sw=2
autocmd BufNewFile,BufRead  *.html set ts=2 sw=2

" force plugins to load correctly. Turned back on below
filetype off

" Load plugins here (pathogen or vundle)

syntax on
filetype plugin indent on " activate plugin and indent files by default

" insert current date and time
imap <C-d> <C-R>=strftime('%Y-%m-%d')<CR>
imap <C-t> <C-R>=strftime('%H:%M:%S')<CR>

" visualize tabs and newlines. Use "set list" to activate
set listchars=tab:▸\ ,eol:¬
