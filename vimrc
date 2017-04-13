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

set clipboard=unamedplus


if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set relativenumber
" relatve number setting and toggle
" if(&relativenumber == 1)
"  set number
" else
"  set relativenumber
" endif

" nnoremap <C-m> :call NumberToggle()<cr>

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
Plugin 'jsx/jsx.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'briancollins/vim-jst'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
call vundle#end()

filetype off

syntax enable
colorscheme monokai
filetype plugin indent on

" scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-'\'> :NERDTreeToggle<CR>
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
