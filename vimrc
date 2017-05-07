set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set nocompatible
set mouse=a
set cursorline

" softtabs
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation
set nojoinspaces

" line length
set textwidth=100
set colorcolumn=+1

" Numbers
" set number
set numberwidth=5

" Autocomplete
" set complete=+kspell

set clipboard=unnamed


if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set number
" relatve number setting and toggle
" if(&relativenumber == 1)
"  set number
" else
"  set relativenumber
" endif

" nnoremap <C-m> :call NumberToggle()<cr>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l

" Tab navigation
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>

nnoremap \ :NERDTreeToggle<CR>

" copy clipboard
if has('nvim')
  let test#strategy = "neovim"
else
  let test#strategy = "dispatch"
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" My Install
Plugin 'tpope/vim-rails'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ngmy/vim-rubocop'
Plugin 'tpope/vim-bundler'
Plugin 'tmhedberg/matchit'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'briancollins/vim-jst'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

filetype off

syntax enable
set background=dark
colorscheme monokai
filetype plugin indent on

" scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" CtrlP ignore
set wildignore+=*/tmp/*,*/node_modules/*

autocmd BufEnter * EnableStripWhitespaceOnSave

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tablin#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1

" Copy paste
vnoremap <C-y> "+y
vnoremap <C-p> "+gP
nnoremap <C-p> "+gP

