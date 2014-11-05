" 行番号の表示
set nu 
" 右下に表示される行・列の番号を表示
set ruler
" 自動インデントを有効にする
set autoindent
" タブを表示する時の幅
set tabstop=2
 " 自動で挿入されるインデントの幅
set shiftwidth=2 
" タブ入力時の幅を2に設定
set softtabstop=2
 " 閉じ括弧入力時に対応する括弧の強調
set showmatch 
" showmatch設定の表示秒数(0.1秒単位)
set matchtime=4
" インクリメンタルサーチを行う
set incsearch
 " 文字列検索で大文字小文字を区別しない
set ignorecase
 " 文字列検索でマッチするものをハイライト表示する
set hlsearch
 " 検索文字に大文字が含まれる場合にignorecaseをOFFにする(大文字小文字を区別する)
set smartcase
" コマンドラインにおける補完候補の表示
set wildmenu 
" Deleteキーを有効にする
set t_kD=^? 
" バックスペースキーの動作を普通のテキストエディタと同じようにする
set backspace=indent,eol,start 
" 見た目によるカーソル移動をする
" nnoremap j gj
" nnoremap k gk
" シンタックスを有効にする
syntax enable 
" カラー設定
colorscheme torte 
" エンコーディングをutf8に設定
set encoding=utf8 
" ファイルエンコードをutf8に設定
set fileencoding=utf-8 
" 編集中のファイル名を表示
set title 
" ウィンドウの幅より長い行は折り返して表示
set wrap
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" コマンドを画面最下部に表示する
set showcmd
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" TABにて対応ペアにジャンプ
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
