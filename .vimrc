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

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"
" NerdTree. Used for file management
NeoBundle 'scrooloose/nerdtree'

" CtrlP. Used for finding files
NeoBundle 'ctrlpvim/ctrlp.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Open NERDTree on startup
autocmd vimenter * NERDTree
