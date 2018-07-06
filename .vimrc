filetype plugin on
set tabstop=2
set shiftwidth=2
set number
set history=200
set hlsearch
set incsearch
autocmd ColorScheme * highlight Visual ctermfg=245

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
nnoremap sf :split<CR>
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
nnoremap sb gT
nnoremap sc :tabclose<CR>


nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> <C-l> : <C-u>nohlsearch<CR><C-l>

augroup MyHTML
	autocmd!
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END


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
NeoBundle 'tpope/vim-surround'
NeoBundle 'nelstrom/vim-visual-star-search'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle "Shougo/neosnippet"
NeoBundle 'Shougo/neosnippet-snippets'

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax enable
colorscheme molokai


"----------------------------------------------------------
" neocomplete・neosnippetの設定
"----------------------------------------------------------
if neobundle#is_installed('neocomplete.vim')
    " Vim起動時にneocompleteを有効にする
    let g:neocomplete#enable_at_startup = 1
    " smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
    let g:neocomplete#enable_smart_case = 1
    " 3文字以上の単語に対して補完を有効にする
    let g:neocomplete#min_keyword_length = 3
    " 区切り文字まで補完する
    let g:neocomplete#enable_auto_delimiter = 1
    " 1文字目の入力から補完のポップアップを表示
    let g:neocomplete#auto_completion_start_length = 1
    " バックスペースで補完のポップアップを閉じる
    inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"

    " エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
    imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
    " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
    imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif
