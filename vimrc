set nocompatible " sanely reset global .vimrc options
set encoding=utf-8 " use utf-8 internally
set termencoding=utf-8 " ignore terminal encoding
set hidden " allow to switch from an unsaved buffer and keep undo history
set ttyfast " act as it is fast terminal connection for smooth rendering

"set noerrorbells " turn off beeps and flashes
"alternative way. Works for GUI also
set visualbell
set t_vb=

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

" ask tmux for an extended mouse reporting mode
" this allows to resize split windows with mouse in tmux
if &term =~ '^screen'
  set ttymouse=xterm2
endif

set incsearch " do incremental search
set hlsearch " highlight all search matches
set ignorecase " case insensitive search
" clear search highlight on redraw screen
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

if has("win32")
  set guifont=Terminus:h14:b:cRUSSIAN:qDRAFT
else
  set guifont=Terminus\ Bold\ 14
endif

" expand tabs everywhere except .go files
set expandtab
autocmd BufNewFile,BufRead  *.go set noexpandtab

set autoindent
" set default shiftwidth and softtabstop to 4
set ts=2
set sw=2

" force plugins to load correctly. Turned back on below
filetype off

" Load plugins here
call plug#begin('~/.vim/.bundle')
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/dbext.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go'

" code completion
Plug 'zxqfl/tabnine-vim'

" navigation and search
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'

" git client
Plug 'iberianpig/tig-explorer.vim'
call plug#end()
let g:deoplete#enable_at_startup = 1

syntax on
filetype plugin indent on " activate plugin and indent files by default

" insert current date and time
imap <C-d> <C-R>=strftime('%Y-%m-%d')<CR>
imap <C-t> <C-R>=strftime('%H:%M:%S')<CR>

" visualize tabs and newlines. Use "set list" to activate
set listchars=tab:▸\ ,eol:¬

if has("win32") && ! has("gui_running")
  colorscheme xoria16win
elseif &t_Co != 256 && ! has("gui_running")
  colorscheme xoria16
else
  colorscheme my-xoria256
endif

map <C-o> :e.<CR>
map <A-RIGHT> :bn<CR>
map <A-LEFT> :bp<CR>

" gnome terminal has its own tabs with the same shortcuts
map <C-t> :tabe<CR>
map <C-LEFT> :tabp<CR>
map <C-RIGHT> :tabn<CR>

nnoremap \| :vsp<CR>
map <A-RIGHT> <C-W><RIGHT>
map <A-LEFT> <C-W><LEFT>

" resize windows
map <C-S-RIGHT> <C-W>>
map <C-S-LEFT> <C-W><
map <C-S-DOWN> <C-W>+
map <C-S-UP> <C-W>-

map <F1> \be
map <F2> :w<CR>
" TODO Old habit. Remove
map <F6> \be

set wcm=<Tab>
"change file EOL format
menu SetFileFormat.unix :set fileformat=unix<CR>
menu SetFileFormat.dos  :set fileformat=dos<CR>
menu SetFileFormat.mac  :set fileformat=mac<CR>
map <F7> :emenu SetFileFormat.<Tab>

"change encoding
menu ChangeEnc.utf-8      :e ++enc=utf-8<CR>
menu ChangeEnc.cp1251     :e ++enc=cp1251<CR>
map <F8> :emenu ChangeEnc.<Tab>

"convert file encoding
menu SetFileEncoding.utf-8     :set fenc=utf-8<CR>
menu SetFileEncoding.cp1251    :set fenc=cp1251<CR>
map <S-F8> :emenu SetFileEncoding.<Tab>

map <F9> :set spell<CR>
map <C-F9> :set nospell<CR>

" highlight trailing spaces
match IncSearch /\s\+$/

" keep selection after indenting
vnoremap > >gv
vnoremap < <gv
" indent one space left/right
vnoremap . :<BS><BS><BS><BS><BS>setlocal sw=1<CR>gv>:set sw<<CR>gv
vnoremap , :<BS><BS><BS><BS><BS>setlocal sw=1<CR>gv<:set sw<<CR>gv

"code completion on Tab
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
set grepprg=rg\ --vimgrep

"ripgrep in quickfix window
nnoremap <Leader>/ :Rg<space>
nnoremap <Leader>rg :Rg<space>
nnoremap <Leader>rw :Rg<space><C-r><C-w>

"git client
nnoremap <Leader>ta :Tig --all<CR>
nnoremap <Leader>t<CR> :Tig --all<CR>
nnoremap <Leader>tb :TigBlame<CR>
nnoremap <Leader>tf :TigOpenCurrentFile<CR>
nnoremap <Leader>tg :TigGrep<CR>

"terminal
set splitbelow
tnoremap <C-\><ESC> <C-\><C-N>

command! PrettyPrintJSON '<,'>!python -m json.tool

" project configs
if hostname() == "x99"
  source ~/projects/data/.vimrc
  source ~/projects/results-eta/.vimrc
endif

set spell
