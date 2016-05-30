set nocompatible

let mapleader = ","

" for NeoBundle {{{
"  if has('vim_starting')
"      set runtimepath+=~/.vim/bundle/automatic/neobundle.vim/
"  endif
"  call neobundle#rc(expand('~/.vim/bundle/automatic/'))
"  
"  " Let NeoBundle manage NeoBundle
"  NeoBundleFetch 'https://github.com/Shougo/neobundle.vim.git'
"  " Recommended to install
"  " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
"  NeoBundle 'https://github.com/Shougo/vimproc.git', {
"        \ 'build' : {
"        \     'windows' : 'make -f make_mingw32.mak',
"        \     'cygwin' : 'make -f make_cygwin.mak',
"        \     'mac' : 'make -f make_mac.mak',
"        \     'unix' : 'make -f make_unix.mak',
"        \    },
"        \ }
"  " My Bundles List
"  NeoBundle 'https://github.com/Shougo/unite.vim.git'
"  
"  "for QuickRun {{{
"  NeoBundle 'https://github.com/thinca/vim-quickrun.git'
"    let g:quickrun_config = {
"    \   "_" : {
"    \       "outputter/buffer/split" : ":botright",
"    \       "outputter/buffer/close_on_empty" : 1
"    \   },
"    \}
"    nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
"  "}}}
"  
"  NeoBundle 'https://github.com/mattn/webapi-vim.git'
"  
"  " for neocomplecache {{{
"  "NeoBundle 'https://github.com/Shougo/neocomplcache.git'
"  "NeoBundle 'https://github.com/jelera/vim-javascript-syntax.git'
"  "NeoBundle 'https://github.com/myhere/vim-nodejs-complete.git'
"  "NeoBundle 'https://github.com/teramako/jscomplete-vim.git'
"  "  let g:neocomplcache_enable_at_startup = 1
"  "  " use smartcase
"  "  let g:neocomplcache_enable_smart_case = 1
"  "  let g:neocomplcache_enable_underbar_completion = 1
"  "  let g:neocomplcache_min_syntax_length = 3
"  "  
"  "  " Define dictionary.
"  "  let g:neocomplcache_dictionary_filetype_lists = {
"  "      \ 'default'    : '',
"  "      \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
"  "      \ }
"  "  
"  "  " for node.js
"  "  autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
"  "  if !exists('g:neocomplcache_omni_functions')
"  "    let g:neocomplcache_omni_functions = {}
"  "  endif
"  "  let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'
"  "  let g:node_usejscomplete = 1
"  "}}}
"  
"  "for lightline.vim {{{
"  NeoBundle 'https://github.com/itchyny/lightline.vim.git'
"    let g:lightline = {
"        \ 'colorscheme':'landscape',
"        \ }
"  "}}}
"  
"  "for sunday.vim {{{
"  NeoBundle 'https://github.com/nishigori/vim-sunday.git'
"    let g:sunday_pairs = [ 
"        \ ['月', '火', '水', '木', '金', '土', '日'],
"        \]
"  "}}}
"  "for vim-over {{{
"  NeoBundle 'https://github.com/osyo-manga/vim-over.git'
"  nnoremap <silent> <Leader>m :OverCommandLine<CR>%s/
"  "}}}
"  
"  NeoBundle 'https://github.com/mattn/httpstatus-vim.git'
"  NeoBundle 'https://github.com/taku-o/vim-catn.git'
"  NeoBundle 'https://github.com/tpope/vim-surround.git'
"  " NeoBundle 'https://github.com/mattn/benchvimrc-vim.git'
"  " NeoBundle 'https://github.com/kana/vim-fakeclip.git'
"  " NeoBundle 'https://github.com/gregsexton/VimCalc.git'
"  "NeoBundle ''
"  
"  " Not repos List
"  "for pukapuka
"  "NeoBundle 'pukapuka', {'type' : 'nosync', 'base' : '~/.vim/bundle/manually'}
"  "set statusline=%=%{g:PukaPuka()}
"
"  "for gips.vim {{{
"  NeoBundle 'https://github.com/modsound/gips-vim.git'
"  let g:gips_reading_txt = '$HOME/.vim/bundle/automatic/gips-vim/autoload/dict/quickref_vim.txt'
"  "}}}
"  
"  " for qfixhowm {{{
"  NeoBundle 'qfixhowm', {'type' : 'nosync', 'base' : '~/.vim/bundle/manually'}
"    "キーマップリーダー
"    let QFixHowm_Key = 'g'
"    "howm_dirはファイルを保存したいディレクトリを指定
"    let howm_dir = '/cygdrive/d/qfixhowm_cyg'
"    let howm_file = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
"    let howm_fileencoding    = 'utf-8'
"    let howm_fileformat      = 'unix'
"    " カレンダーに表示する月数
"    let QFixHowm_CalendarCount = 1
"    
"    " qfix_memoファイルタイプ
"    let QFixHowm_FileType = 'qfix_memo'
"    "オートリンクでファイルを開く
"    let QFixHowm_Wiki = 1
"    "オートリンクでファイルの保存場所
"    let QFixHowm_WikiDir = 'wiki'
"    "自動で更新時間を変更する
"    let QFixHowm_RecentMode = 2
"    "プレビューウィンドウのサイズ
"    "set previewheight=15
"    let QFix_Height = 5
"  "}}}
""}}}
"
set shortmess+=I     "起動時メッセージを消す
set number           "行番号を表示
set ambiwidth=double "全角記号が崩れないようにする
syntax on            "強調表示を行う
set showmatch        "括弧の対応をハイライトする
set showcmd          "入力中のコマンドを表示する
set wrap             "画面幅で折り返す
set nolist           "不可視文字の表示をしない
set tabstop=4        "タブはスペース4つ分
set expandtab        "タブをスペースに自動変換する
"set noautoindent    "自動でインデントしない
set backspace=2      "backspaceでタブや改行、スペースを消せるようにする
set wrapscan         "検索が行末まで行ったら自動で行頭へ移動
set ignorecase       "大文字小文字を区別しない
set smartcase        "大文字で始めたら大文字小文字を区別する
set incsearch        "インクリメンタルサーチを行う
set hlsearch         "検索結果をハイライトする
set browsedir=current
set colorcolumn=80

"表示行単位で移動
noremap j gj
noremap k gk
noremap 0 g0
noremap $ g$

"Spaceで移動
nnoremap <Space> <C-f>

"エラー時にベルを鳴らさない
set noerrorbells

"改行コードの自動認識
"set fileformats=dos,mac,unix

"有用なのか分からないのでお試しで入れている設定
"コマンドライン保管する時に強化されたものを使う(参照 :help wildmenu)
set nowildmenu
"テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
"挿入モードやo|Oした時に自動で改行文字列を挿入させない
autocmd FileType * set formatoptions-=ro
"ルーラを表示
set ruler
"常にステータス行を表示
set laststatus=2
"コマンドをステータス行に表示
set showcmd
"タイトルを表示
set title

"バックアップ
set nobackup "ファイルの末尾に~がついたバックアップファイルを作成しないようにする

"クリップボードからの貼付けを可能にする
set clipboard=unnamed

"Cygwin限定クリップボード
vnoremap clip :w !cat > /dev/clipboard<CR><CR>
vmap ,y "*y
nmap ,p "*p
"Cygwin限定notitle
set notitle

"key map for karagyo
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

"xmlの閉じタグを自動補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END
inoremap </ </<C-x><C-o>

"javascriptのインデント
augroup indent
  autocmd!
  autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

"()を入力した後自動でカーソルが()の中に戻る設定
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap “” “”<Left>
imap '' ''<Left>
imap ’’ ’’<Left>
imap "" ""<Left>
imap <> <><Left>
imap 「」 「」<Left>

" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

"colorschema
"colorscheme molokai

"@とか$とか
inoremap <C-d> $
inoremap <C-a> @

"key map for Calendar 
"noremap <S-c><Space> :Calendar<CR>
"key map for Calc 
"noremap <S-l><Space> :Calc<CR>

"key map for qfixhowm
nmap <S-q><Space> g,a<S-g><Enter>
"key map for 画面間移動
noremap <Tab> <C-w>w
"key map for Unite
noremap <S-b><Space> :Unite buffer<CR>

