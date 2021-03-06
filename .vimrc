"----------------------------------------------------
"" neobundle.vim
"----------------------------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }
NeoBundle 'The-NERD-tree'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'editorconfig/editorconfig-vim'

" Color Scheme
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

"----------------------------------------------------
"" neocomplete.vim
"----------------------------------------------------
" 起動時にneocompleteを有効化する
let g:neocomplete#enable_at_startup = 1
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" シンタックスをキャッシュする最小文字列を3にする
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '¥*ku¥*'
" ファイルタイプ毎に参照するディクショナリを設定する
"let g:neocomplete#sources#dictionary#dictionaries = {
"      ¥ 'default' : '',
"      ¥ 'vimshell' : $HOME.'/.vimshell_hist',
"      ¥ 'scheme' : $HOME.'/.gosh_completions'
"      ¥ }
" キーワード収集に日本語を除外する
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '¥h¥w*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets'



" *.tx をhtmlファイルとして扱う
au BufNewFile,BufRead *.tx :set filetype=html

" *.t *.psgiをperlファイルとして扱う
au BufNewFile,BufRead *.psgi :set filetype=perl
au BufNewFile,BufRead *.t :set filetype=perl

" *.coffeeをcoffeeファイルとして扱う
au BufNewFile,BufRead *.coffee :set filetype=coffee

" *.mdをmarkdownファイルとして扱う
"au BufNewFile,BufRead *.md :set filetype=markdown


set nocompatible

filetype off

syntax on

set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

set nostartofline

set ruler

set laststatus=2

set mouse=a

set cmdheight=2

set number

set clipboard+=unnamed
set clipboard+=autoselect

filetype plugin indent on
