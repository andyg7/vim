set nocompatible
set hidden
set number
set wrapmargin=5
set ruler
syntax on
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase
set scrolloff=2
set autoindent
set smartindent

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
set nocompatible               " Be iMproved
endif

set runtimepath^=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" NerdTree. Used for file management
NeoBundle 'scrooloose/nerdtree'

" CtrlP. Used for finding files
NeoBundle 'ctrlpvim/ctrlp.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" Open NERDTree on startup
autocmd vimenter * NERDTree
