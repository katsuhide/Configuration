"クリップボードをWindowsと連携
set clipboard=unnamed

"タブの代わりに空白文字を挿入する
set expandtab

"タブ文字、行末など不可視文字を表示する
"set list

"行番号を表示する
set number

"シフト移動幅
"set shiftwidth=4

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

"ファイル内の  が対応する空白の数
"set tabstop=4
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"検索をファイルの先頭へループしない
set nowrapscan

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4

"ノーマルモードでエンターキーを打つことで改行を挿入
noremap <CR> o<ESC>

"検索で大文字小文字を区別しない
set ignorecase

"検索で小文字なら大文字を無視、大文字なら無視しない設定。検索パターンが大文字を含んでいたら大文字と小文字を区別して検索し、小文字のみの場合は大文字と小文字を区別しないで検索する
set smartcase

"スワップファイルを作らない
set noswapfile

call pathogen#runtime_append_all_bundles()
