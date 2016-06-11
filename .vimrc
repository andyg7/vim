set nocompatible 	" Turn on useful features 
set hidden 		" Hides changes to buffer so aren't forced to save
set number 		" Sets line numbers
set wrapmargin=5	" Wrap text to next line
set ruler		" Indicates line number and position in line at bottom right
syntax on		" Default syntax coloring
set incsearch 		" Starts searching as you type
set hlsearch 		" Highlight search results
set showmatch 		" Quickly shows matching paren or bracket
set ignorecase		" Case insenstive searching
set smartcase		" If capitalization used, then use case sensitive searching
set scrolloff=2 	" Min number of lines above/below cursor
set autoindent		" Auto indent using prev line as example
set smartindent		" Indents extra when it thinks it should - works well for C-like code 

" NeoBundle - packet manager for plug ins:
" Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
set nocompatible               
endif

set runtimepath^=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Put plug ins here:

" NerdTree. Used for file management
NeoBundle 'scrooloose/nerdtree'

" CtrlP. Used for finding files
NeoBundle 'ctrlpvim/ctrlp.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
" End of NeoBundle

" Open NERDTree on startup
autocmd vimenter * NERDTree
