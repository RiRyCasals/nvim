" syntax, color scheme
syntax enable
syntax on

" encoding
set encoding=utf-8              "バッファ内
set fileencoding=utf-8          "書き込み
set fileencodings=utf-8,cp932   "読み込み

" looks
set number                  "絶対行番号を表示
set relativenumber          "相対行番号を表示
set cursorline              "カーソルがある行にラインを引く
set showmatch               "対応する括弧を強調表示
set nowrap                  "行の折り返し無し
set ambiwidth=double        "全角文字の幅調整
set title                   "タイトルバーにファイル名を表示
set laststatus=2            "ステータス行を常に表示
set ruler                   "行，列番号を表示
set showcmd                 "入力中のコマンドを表示
set scrolloff=5             "スクロール時の上下の視界を確保

" indent, tab
set tabstop=4                                       "タブ入力時の文字数
autocmd BufNewFile,BufRead *.nim set tabstop=2      ".nim のときのタブ文字数
autocmd BufNewFile,BufRead *.dart set tabstop=2      ".dart のときのタブ文字数
set shiftwidth=4                                    "シフト時の文字数
autocmd BufNewFile,BufRead *.nim set shiftwidth=2   ".nim のときのシフト数
autocmd BufNewFile,BufRead *.dart set shiftwidth=2   ".dart のときのシフト数
set expandtab                                       "タブにスペースを使用
set smarttab                                        "行頭でタブ入力時にインデントを挿入
set smartindent                                     "ブロックに応じて自動でインデントを挿入する
"set autoindent                                     "改行時に自動でインデントを挿入する

" complement
set wildmode=list:longest           "最長の共通部分まで補完し，リストを表示
set completeopt=menuone,noinsert    "

" search
set ignorecase  "大文字小文字を区別しない
set smartcase   "大文字が含まれる場合，大文字小文字を区別する
set incsearch   "インクリメンタルサーチを有効にする
set wrapscan    "最後まで検索した後先頭に戻る
set hlsearch    "検索結果をハイライト

" mouse
set mouse=a     "全モードでマウスを有効化

" etc
set wildmenu    "補完候補を一覧表示
set autoread    "他でファイルが更新されたときに自動で読み込み
set nobackup    "バックアップファイルを保存しない
set noswapfile  "スワップファイルを保存しない
set hidden      "編集中のファイルを保存していなくても他のファイルに移動できる


" key binding

"ハイライトの非表示
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"補完候補表示中に C-j, C-k で選択
inoremap <expr><C-j> pumvisible() ? "<Down>" : "<C-j>"
inoremap <expr><C-k> pumvisible() ? "<Up>" : "<C-k>"
"補完候補表示中にタブで確定
inoremap <expr><TAB>  pumvisible() ? "<C-y>" : "<TAB>"

inoremap '<ESC> '
inoremap ' ''<LEFT>

inoremap "<ESC> "
inoremap " ""<LEFT>

inoremap [<ESC> [
inoremap [ []<LEFT>
inoremap [<C-j> []<LEFT><CR><ESC><S-o><TAB>

inoremap (<ESC> (
inoremap ( ()<LEFT>
inoremap (<C-j> ()<LEFT><CR><ESC><S-o><TAB>

inoremap {<ESC> {
inoremap { {}<LEFT>
inoremap {<C-j> {}<LEFT><CR><ESC><S-o><TAB>

inoremap <C-l> <DELETE>

nnoremap <C-e> :CocCommand explorer<CR>


" vim plug
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'honza/vim-snippets'
call plug#end()
