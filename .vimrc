" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"General settings and configurations 
set t_Co=256
set t_ut=
colorscheme codedark
syntax enable
set number
set statusline
set nocompatible
set spell spelllang=en_us

set mouse=a
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set autoindent

" "inoremap { {<CR><BS>}<Esc>ko
:inoremap ( ()<Esc>i
noremap        (  ()<Left>
inoremap " ""<Esc>i
inoremap [ []<Esc>i
"Remapping the escape key to be more convenient
inoremap jk <esc>

"Disabling arrows during normal mode 
nnoremap <Left>  <nop>
nnoremap <Right> <nop>
nnoremap <Up>    <nop>
nnoremap <Down>  <nop>

"inoremap <Left>  <esc>
"inoremap <Right> <esc>
"inoremap <Up>    <esc>
"inoremap <Down>  <esc>

"set t_ku=^[OA
"set t_kd=^[OB
"set t_kr=^[OC
"set t_kl=^[OD

"NerdTree ShortCut
let mapleader = ","
map <Leader>f :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


"Move up and down on the<nop>  displayed line 
nnoremap j gj    
nnoremap k gk
"Make - the end button, making home(0) and end close together 
noremap - $

"Easy save and delete,copy, change till end of line 
nnoremap <S-s> :w<CR>
nnoremap <S-q> :q<CR>
nnoremap Y y$
nnoremap D d$
nnoremap C c$

"Easy moving in windows 
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-h> <C-w>h
nnoremap <S-l> <C-w>l
"Select all visual and enter in normal mode
nnoremap va ggvG$
nnoremap <CR> o<esc>

" Delete line while in insert mode
inoremap <c-d> <esc>ddi

" Surround the word by <>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>< viw<esc>a><esc>bi<<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Help with tabs 
" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt


" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>
" Easily close a tab.
noremap <Leader>tc :tabclose<CR>
" Easily move a tab.
noremap <Leader>tm :tabmove<CR>
" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>
" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>

" Jekyll Path"
let g:jekyll_path = "~/Desktop/dJounral/_posts"
