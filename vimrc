M configuration
" Uses Vundle for plug-ins.
" Some options for {G,M}VIM are set, too.
"
" Author: Kevin Dungs <kevin@dun.gs>
" Date:   2015-02-18


" Load plug-ins via Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" List of plug-ins
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'gmarik/vundle'
Plugin 'guns/xterm-color-table.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
filetype plugin indent on


" Encoding
set enc=utf-8


" Visual helpers
set number
set ruler


" Wildmenu
set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc


" Misc
set autoread
set backspace=2
set hlsearch
set ignorecase
set incsearch
set lazyredraw
set magic
set showmatch
set smartcase


" Colours
syntax enable
colorscheme tomorrow-night
"colorscheme tomorrow


" Options for {G,M}VIM
if has("gui_running")
    set guioptions-=T
    set guioptions-=r
    set guioptions-=m
    set guifont=Source\ Code\ Pro\ for\ Powerline:h14
    autocmd VimResized * wincmd =
endif


" White-space handling
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set tabstop=4
set wrap


" Mouse
set mouse=a
set nohidden


" Spell-checker
set spell spelllang=en_gb


" Plug-in specific settings

"" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"" Clang-format
map <C-K> :pyf ~/.vim/clang-format/clang-format.py<CR>
imap <C-K> <ESC>:pyf ~/.vim/clang-format/clang-format.py<CR>i

"" Ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" NERDTree
let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
map <C-t> :NERDTreeToggle<CR>

"" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_python_checkers = ['pep8']
