set nocompatible
filetype off

set rtp +=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
" ariline 설정
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar

Plugin 'scrooloose/nerdtree'
"NERDTree ON 단축키를 "\nt"로 설정
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }

Plugin 'davidhalter/jedi-vim'
" jedi 설정
let g:jedi#show_call_signatures=0       " 자세히 설명하는 창을 보여준다 1=활성화, 0=비>활성화
let g:jedi#popup_select_first="0"       " 자동완성시 자동팝업 등장 x
let g:jedi#force_py_version=3           " 자동완성 3 = python3 , 2 = python2

Plugin 'https://github.com/tpope/vim-pathogen'

Plugin 'hynek/vim-python-pep8-indent'
" pep8 설정
filetype plugin indent on

Plugin 'nvie/vim-flake8'
" flake8 설정
let g:syntastic_python_checkers=['flake8']        " ↓ 실행시 현재줄 주석 해제필요    
" let g:syntastic_python_flake8_args='--ignore='    " 무시하고자 하는 errorcoda

Plugin 'Valloric/YouCompleteMe'

call vundle#end()




" 하이라이팅
if has("syntax")
    syntax on
endif
set hlsearch " 검색 하이라이팅
set cursorline " 커서 라인 하이라이팅
set showmatch " 일치하는 괄호 하이라이팅

" 자동 들여쓰기
set autoindent
set cindent
set expandtab
set softtabstop=4

" 줄 번호
set nu

" gruvbox 스킨 적용
set background=dark
colorscheme gruvbox

set laststatus=2 " 상태바 표시 항상

set ts=4 " 탭 너비
set sts=4
set shiftwidth=4 " 자동 들여쓰기 너비

" 자동 읽기/저장
set autowrite
set autoread

set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set mouse=a

" 마지막으로 수정된 곳 커서 위치
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 커서 위치 표시
set ruler
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" 한국어 파일 인코딩
set fileencoding=utf-8

set clipboard=unnamed "클립보드

set paste " 복사 시 자동 들여쓰기 방지
set pastetoggle=<F2> " paste 옵션 F2키로 켜고 끄기
