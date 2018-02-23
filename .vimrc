set runtimepath=~/vimfiles,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim80,C:\\Program\ Files\ (x86)\\Vim\\vim80\\pack\\dist\\opt\\matchit,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~/vimfiles/after


"VUNDLE INSTALL CODE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/TwitVim'
Plugin 'sjl/badwolf'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"
" BEGIN VIMRC
"
version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cmap <S-Insert> +
imap <S-Insert> 
xnoremap  ggVG
snoremap  gggHG
onoremap  gggHG
nnoremap  gggHG
vnoremap  "+y
noremap  :promptfind
noremap  :promptrepl
noremap  
vnoremap  :update
nnoremap  :update
onoremap  :update
nmap  "+gP
omap  "+gP
vnoremap  "+x
noremap  
noremap  u
cnoremap   :simalt ~
inoremap   :simalt ~
map Q gq
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
onoremap <C-F4> c
nnoremap <C-F4> c
vnoremap <C-F4> c
onoremap <C-Tab> w
nnoremap <C-Tab> w
vnoremap <C-Tab> w
vmap <S-Insert> 
vnoremap <BS> d
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
nmap <S-Insert> "+gP
omap <S-Insert> "+gP
cnoremap  gggHG
inoremap  gggHG
cnoremap  :promptfind
inoremap  :promptfind
cnoremap  :promptrepl
inoremap  :promptrepl
inoremap  :update
inoremap  u
cmap  +
inoremap  
inoremap  u
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set diffexpr=MyDiff()
set display=truncate
set guioptions=egmrLT
set helplang=En
set history=200
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set langnoremap
set nolangremap
set nrformats=bin,hex
set ruler
set scrolloff=5
set selection=exclusive
set selectmode=mouse,key
set ttimeout
set ttimeoutlen=100
set undofile
set whichwrap=b,s,<,>,[,]
set wildmenu

" Set the vertical height of the window
set lines=40

" Set the horizontal width of the window
set columns=100

" Set the main color scheme
colors badwolf

" Set the font face and standard height
set guifont=Lucida_Console:h11

" Set the backup, swap file, and undo file directories
set backupdir=$HOME\Vim\backups
set directory=$HOME\Vim\swap
set undodir=$HOME\Vim\undo

" Change the number of characters in an indent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Turn on syntax highlighting
syntax on

set autoindent

:command Nt NERDTree

" Move into new color scheme when using :Goyo
function! s:goyo_enter()
    colorscheme pencil
endfunction

function! s:goyo_leave()
    colorscheme badwolf
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Indent guides visual update
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

set encoding=utf-8
