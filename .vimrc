filetype plugin on
set tabstop=2
set shiftwidth=2
set number
set history=200
set incsearch

map <C-n> :NERDTreeToggle<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <silent> jj <ESC>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

"ウィンドウ操作
nnoremap s <Nop>
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
"タブ操作
nnoremap st :tabnew<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sc :tabclose<CR>


nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'jacoborus/tender.vim' "カラースキーム
NeoBundle 'tomasr/molokai'       "カラースキーム
NeoBundle 'scrooloose/nerdtree'  "ディレクトリツリー表示
NeoBundle 'cohama/lexima.vim'    "閉じカッコ補完

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax enable
colorscheme molokai
