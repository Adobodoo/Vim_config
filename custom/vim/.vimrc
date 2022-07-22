"Windows setup
"============================================================================================
if has("win32")
    let s:editor_root=expand("~/vimfiles")
else
    let s:editor_root=expand("~/.vim")
endif

"True Color set
"============================================================================================
set termguicolors

"Vundle setup
"============================================================================================
set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'AutoClose'                        " [] {} Automatric parenthesis. {} ()
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



"Plug setup
"============================================================================================
if empty(glob(s:editor_root . '/autoload/plug.vim'))
    autocmd VimEnter * echom "Downloading and installing vim-plug..."
    silent execute "!curl -fLo " . s:editor_root . "/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall
endif

call plug#begin(s:editor_root . '/plugged')
Plug 'scrooloose/syntastic'           , { 'on': [] }
Plug 'kien/ctrlp.vim'                 , { 'on': [] }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'klen/python-mode'          , { 'for': 'python' }
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'jacoborus/tender.vim'
Plug 'rakr/vim-one'
Plug 'Jorengarenar/fauxClip'
""Plug 'valloric/youcompleteme', { 'do': 'python3 ./install.py --clang-completer'}

call plug#end()

" Load plugins
call plug#load('syntastic','ctrlp.vim')
"
" Load plugins on insert
"============================================================================================
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('syntastic','ctrlp.vim') | autocmd! load_us_ycm
augroup END


" add other config
"============================================================================================
exec "source " . s:editor_root . "/Config.vim"
exec "source " . s:editor_root . "/VundleConfig.vim"
exec "source " . s:editor_root . "/PlugConfig.vim"
exec "source " . s:editor_root . "/functions.vim"
exec "source " . s:editor_root . "/mappings.vim"
exec "source " . s:editor_root . "/autocmds.vim"


" Common Config
set relativenumber
set mouse=a

" Visualize Config
set background=dark
colorscheme gruvbox

""let g:gruvbox_contrast_dark="hard"
autocmd vimenter * colorscheme gruvbox

""airline의 colorscheme를 다르게 설정할 경우
""let g:airline_theme='solarized'
""let g:airline_solarized_bg='dark'
""let g:airline_theme='gruvbox'
""let g:airline_theme=colorscheme

" Smarter tab line 활성화: 모든 파일 버퍼 출력
let g:airline#extensions#tabline#enabled = 1

" Tab line 구분자 '|' 로 설정
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Tab line 에 파일명만 출력되도록 설정
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Powerline-font 활성화
let g:airline_powerline_fonts = 1

" Plug로 설치한 ColorScheme 불러오기"
for scheme_dir in split(system("find ~/.vim/plugged -name \"colors\" -type d"))
    for scheme_file in split(system("find ".scheme_dir." -name \"*.vim\" -type f"))
        call system("ln -s ".scheme_file." ~/.vim/colors/".split(scheme_file,"/")[-1])
    endfor
endfor
" 끊어진 링크파일 삭제"
for  unlinked_file in split(system("find ~/.vim/colors -xtype l -name \"*.vim\""))
    call system("rm ".unlinked_file)
endfor

let g:fauxClip_copy_cmd         = 'clip.exe'
