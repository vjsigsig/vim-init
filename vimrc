" set NO
set nocompatible
set noexpandtab
set nosmartindent

" set YES
set number
set autoindent
set showcmd
set showmatch
set hlsearch
set ignorecase
set smartcase
set wrapscan
set wildmenu
set list

" set VAL
set fileencoding=utf-8
set fileformat=unix
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cmdheight=2
set laststatus=2
set scrolloff=10
set backspace=start,eol,indent
set listchars=tab:\|\-,trail:~

" set options
"set mouse=i

" command
command NT NERDTree

" colorscheme
set bg=dark

" other
syntax on

" PHP check syntax error
autocmd FileType php set makeprg=php\ -l\ %
autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif | redraw!

" colored row-last Spaces or Tabs
function! SpaceBg()
	highlight SpaceBg ctermbg=blue gui=underline guibg=white
endfunction
augroup SpaceBg
	autocmd!
	autocmd ColorScheme * call SpaceBg()
	autocmd VimEnter,WinEnter * match SpaceBg /\s$/
augroup END
call SpaceBg()

" NERDTree
let g:NERDTreeShowBookmarks = 1

"""""""""""""""""""""""""""""""
" NEOBUNDLE
"""""""""""""""""""""""""""""""
set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	call neobundle#end()
endif

"insert here your Neobundle plugins"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundleCheck

filetype plugin indent on
