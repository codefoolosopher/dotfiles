"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: William Seungan Woo
" Aim for this settting: dev environent for HDL, Verilog
" Revision: v0.8
" Init Date: 02-Jul-2022
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" be iMproved, required
filetype on			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'blueyed/vim-diminactive'
Plugin 'scrooloose/nerdcommenter' " automatic commnet generator
Plugin 'bling/vim-airline' " status bar
Plugin 'Yggdroot/indentLine' " show vertical line for indentation
Plugin 'Tagbar'
Plugin 'ctrlp.vim'
Plugin 'minibufexplorerpp'
Plugin 'neocomplcache-snippets_complete'
Plugin 'Syntastic'
call vundle#end()

filetype plugin indent on





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Customized Vim Setting                                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim runtime config file
set autoindent 		" use automatic indent
set cindent			" use C-sylte indent
set number			" display line number
set tabstop=4		" set the number of tab space
set shiftwidth=4	" set the number of space after hitting {
syntax on			" highlight the syntax
set visualbell		" blink a screen instead of warning beep
set showcmd			" display the command currently being typed
set colorcolumn=120	" use colour to display column
set textwidth=79	" allow 79 for the width of column
set cursorline		" display an underline at the cursor
set background=dark
set ruler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin environment setting                                                  "
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 1. indentLine
let g:indentLine_color_gui = '#385900'
let g:indentLine_color_term = 100
let g:indentLine_char = '¦'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_enabled = 0
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'text', 'sh']
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_maxLines = 3000
nnoremap \il :IndentLinesToggle


" 2. The-NERD-Tree
" Change the mapleader from \ to ,
let mapleader=','
nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeChdirMode=1
let NERDTreeQuitOnOpen=2
let NERDTreeMouseMode=2
let NERDTreeShowHidden=2
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" 3. Tagbar(It must be with ctags installed)
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_autofocus=1
let g:tagbar_autoclose=0
let g:tagbar_iconchars=['▸', '▾']
let g:tagbar_systemenc='utf-8'


" 4. Ctrpl(CTRL+P):w
" CTRL
nmap <leader>m :CtrlPMRU<CR>
nmap <leader>l :CtrlPLine<CR>
nmap <leader>b :CtrlPBuffer<CR>

" 5. miniBufExpl
nmap <C-n> :bn<CR>
nmap <C-m> :bp<CR>
nmap <C-H>		<C-W>h
nmap <C-J>		<C-W>j
nmap <C-K>		<C-W>k
nmap <C-L>		<C-W>l

" 6. Neocomplcache
let g:neocomplcache_enable_at_startup=1



" 7. Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


