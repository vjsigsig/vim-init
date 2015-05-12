"[各種設定]"{{
	"[set NO]"{{
		"vi互換無効
		set nocompatible
		"<Tab>入力でスペース無効
		set noexpandtab
		"高度インデント無効
		set nosmartindent

	"[set YES]"{{
		"行数表示
		set number
		"オートインデント有効
		set autoindent
		"コマンドをステータスラインに表示
		set showcmd
		"閉じ括弧入力時対応する括弧表示
		set showmatch
		"検索結果ハイライト
		set hlsearch
		"検索時大文字小文字を区別しない
		set ignorecase
		"検索時全て小文字なら大文字を無視
		set smartcase
		"検索をファイルの末尾まで検索したら検索結果の行頭へループ
		set wrapscan
		"コマンドライン補完を拡張モードで行う
		set wildmenu
		"タブ文字、行末文字などの不可視文字を表示
		set list
		"カーソルが何行目の何列目に存在しているかをステータスラインに表示
		set ruler
	"}}

	"[set VAL]"{{
		"文字エンコーディング
		set fileencoding=utf-8
		"改行コード
		set fileformat=unix
		"<Tab>が対応する空白の数
		set tabstop=4
		"set softtabstop=10
		"自動インデントの各段階に使われる空白の数
		set shiftwidth=4
		"コマンドラインの行数
		set cmdheight=2
		"ステータスラインを表示するウィンドウを設定
		"0:一番下のウィンドウはステータスラインを表示しない
		"1:ウィンドウが1つの時はステータスラインを表示しない、2つ以上ある場合は表示する
		"2:常にステータスラインを表示する
		set laststatus=2
		"カーソルの上下に表示する最低限の行数。999などにするとカーソルは常に真ん中になる
		set scrolloff=10
		"バックスペースキーの動作を設定
		"indent:autoindentを超えてバックスペースを動作する
		"eol:改行を超えてバックスペースを動作する
		"start:挿入区間の初めでバックスペースを動作する
		set backspace=start,eol,indent
		"listで表示される文字のフォーマットを定義する
		set listchars=tab:\|\-,trail:~
		"マウスを有効にするモードを設定
		"set mount=i
	"}}
"}}

"[alias]"{{
	command NT NERDTree
"}}

" other
syntax on

"[PHP check syntax error]"{{
	autocmd FileType php set makeprg=php\ -l\ %
	autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif | redraw!
"}}

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

"[NeoBundle]"{{
	filetype off

	if has('vim_starting')
		set runtimepath+=~/.vim/bundle/neobundle.vim
	endif

	call neobundle#begin(expand('~/.vim/bundle/'))

	NeoBundleFetch 'Shougo/neobundle.vim'

	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'ujihisa/unite-colorscheme'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'altercation/vim-colors-solarized'
	NeoBundle 'nanotech/jellybeans.vim'

	NeoBundleCheck

	filetype plugin indent on

	call neobundle#end()
"}}

"[カラースキーム]"{{
	colorscheme jellybeans
	set bg=dark
	set t_Co=256
"}}

