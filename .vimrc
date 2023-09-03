""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "기본
"Plugin 'neomake/neomake'
"Plugin 'qpkorr/vim-renamer' "파일이름 변경????
Plugin 'honza/vim-snippets' "auto keywording
Plugin 'garbas/vim-snipmate' "auto keywording
Plugin 'tomtom/tlib_vim' "auto keywording
Plugin 'MarcWeber/vim-addon-mw-utils' "auto keywording
Plugin 'scrooloose/nerdtree' "nerdtree
Plugin 'vim-airline/vim-airline-themes'
Plugin 'http://github.com/tomasr/molokai'  " colorscheme
Plugin 'plasticboy/vim-markdown' "문서작성시 이쁘게? when mdfile editing, syntax highlight
Plugin 'http://github.com/tpope/vim-fugitive'  "git edit plugin
Plugin 'edkolev/promptline.vim' "쉘 프롬프트
Plugin 'blueyed/vim-diminactive' "no cursor screen blur
Plugin 'bling/vim-airline'   "하단 상태바(현재상태보여줌)                               usage : \+q, \+w
Plugin 'http://github.com/kien/ctrlp.vim' "search file in vim  							usage : ctrl + p
Plugin 'rking/ag.vim' "find keyword at dir , 											usage : Ag keyword
Plugin 'antoinemadec/vim-verilog-instance' "module to instance           			    usage : gb          
Plugin 'godlygeek/tabular' "align, 														usage : Tabularize /,/r1c1  F8
Plugin 'mbbill/undotree'   "															usage : :UndotreeToggle<cr> F5
Plugin 'http://github.com/majutsushi/tagbar' "											usage : TagbarToggle F12
Plugin 'http://github.com/tpope/vim-surround' "괄호 , 따옴표 쉽게 수정					usage : ds(delete), cs(change), yss
Plugin 'http://github.com/michaeljsmith/vim-indent-object' "select same indent line     usage : vii
Plugin 'http://github.com/terryma/vim-multiple-cursors' "same keword editing sametime   usage : ctal + n
Plugin 'http://github.com/junegunn/vim-easy-align' "                                    usage : ga
Plugin 'scrooloose/syntastic' "syntax check                                             usage : lopen
Plugin  'preservim/nerdcommenter' "convinience comment 									usage : \+c+i, \+c+m <->  \+c+space
Plugin 'morhetz/gruvbox'
call vundle#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://github.com/tpope/vim-surround
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ys<CR> ysiw
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bling/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2 
nmap <leader>q :bp<CR>
nmap <leader>w :bn<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leaser>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline/vim-airline-themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'jellybeans'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neomake/neomake
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When writing a buffer (no delay).
"call neomake#configure#automake('w')
"" When writing a buffer (no delay), and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
"" When reading a buffer (after 1s), and when writing (no delay).
"call neomake#configure#automake('rw', 1000)
"" Full config: when writing or reading a buffer, and on changes in insert and
"" normal mode (after 500ms; no delay when writing).
"call neomake#configure#automake('nrwi', 500)

"let g:neomake_open_list = 2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" blueyed/vim-diminactive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:diminactive_enable_focus = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scrooloose/syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 0
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0

let g:syntastic_error_symbol			 = 'X'
let g:syntastic_warning_symbol			 = 'x'

"let g:syntastic_verilog_checkers = ['verilator', 'iverilog']
let g:syntastic_verilog_checkers = ['iverilog']
"map <F7> :lclose<CR>
cmap lc lclose
"cmap lo lopen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://github.com/majutsushi/tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabular
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F8> :Tabularize /,/r1c1<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F5> :UndotreeToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easy-align
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype 기능 & Syntax Highlighting 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 파일의 종류를 자동으로 인식
filet plugin indent on

" 알아서 하이라이팅
if has("syntax")
	syntax on
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 프로그램 기본 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 오리지널 Vi 와의 호환성을 없애고, Vim 만의 기능들을 쓸 수 있게 함.
set nocp

" 모든 옵션을 원래대로 복원
" set all&

" 명령어 기록을 남길 갯수 지정
set hi=100

" 백스페이스 사용
set bs=indent,eol,start

" 인코딩 설정
" 문서를 읽을 때 BOM 을 자동으로 제거하려면, fencs 맨 앞에 ucs-bom 를 추가하세요.
"set fenc=utf-8
"set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs-2le

" backup 파일 자동생성 안함
set nobackup
set noswapfile
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편집 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 커서의 위치를 항상 보이게 함.
set ru

" 완성중인 명령을 표시
set sc

" 줄 번호 표시
set nu

" 탭 크기 설정
set ts=4
set sw=4

" 탭 -> 공백 변환 기능 (사용 안함)
set noet
set sts=0

" 자동 줄바꿈 안함
set nowrap

" 외부에서 변경시  자동으로 변경
set autoread

" can modify
set modifiable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 검색 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 검색어 강조 기능
set hls
 
" 검색시 파일 끝에서 처음으로 되돌리기 안함
" set nows

" 검색시 대소문자를 구별하지 않음
set ic

" 똑똑한 대소문자 구별 기능 사용
set scs
 
" 계속 찾기
set wrapscan

" 찾는 중에 바로바로 검색됨
set incsearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 모양 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" GUI 이면, 시작시 크기 설정
if has("gui_running")
    set lines=50
    set co=125
endif
 
" 추적 수준을 최대로
set report=0

" 항상 status 라인을 표시하도록 함.
set ls=2

"colorscheme torte
"colorscheme molokai
colorscheme gruvbox
if has("unix")
highlight Comment ctermfg=Green
highlight Statement ctermfg=Brown
highlight Special ctermfg=yellow
highlight LineNr ctermfg=DarkCyan
highlight Search ctermfg=white ctermbg=DarkCyan gui=none
highlight IncSearch ctermfg=white ctermbg=Cyan gui=none
highlight Charactorer ctermfg=Gray gui=none
highlight String ctermfg=Gray gui=none
highlight verilogConstant ctermfg=Gray gui=none
else
highlight Comment guifg=Green
highlight Statement guifg=orange
highlight Special guifg=yellow
highlight LineNr guifg=#80a0ff
highlight Search guifg=white guibg=#50d8c4 gui=none
highlight IncSearch guifg=white guibg=#fo48e5 gui=none
highlight Charactorer guifg=gray80 gui=none
highlight String guifg=gray80 gui=none
highlight verilogConstant guifg=gray80 gui=none
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gruvbox Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
let g:gruvbox_contrast_dark='soft'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 자동 들여쓰기 사용
set ai
 
" 똑똑한 들여쓰기 사용
set si


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 단축키 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 상용구 설정
iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
iab xtime <C-R>=strftime("%H:%M:%S")<CR>


map <F9> :noh <CR>
map <F10> :.,$s/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편리한 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab 자동 완성시 가능한 목록을 보여줌
set wmnu

" 파일 탐색기 설정
let g:explVertical=1
let g:explSplitRight=1
let g:explStartRight=1
let g:explWinSize=20

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 기타 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 매크로 실행중에 화면을 다시 그리지 않음
set lz
 
" 프로그램 시작시 플러그인 로드
set lpl

" unix dos mac 줄 변경자 모두 다 읽을 수 있도록 합니다.
set ffs=unix,dos,mac

" fold setting
set foldmethod=marker
set foldmarker={{{,}}}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of File
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


