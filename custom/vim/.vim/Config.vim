"###################################################
"# => General vim configuration (no plugin needed)
"###################################################

set timeout
set timeoutlen=750
set ttimeoutlen=250
if has('nvim')
    set ttimeout
    set ttimeoutlen=0
endif

" Sets how many lines of history VIM has to remember
set history=1000

" Hide mouse after chars typed
set mousehide
" enbable the mouse in term
set mouse=a
" set mouse=nicr

" enable only scrolling mouse
" set mouse=nicr

" Move the cursor eaven if there is nothing there
"set virtualedit=all

" Set a dolar at the end of the word when changing that word
set cpoptions+=$

" Enable filetype plugins
" filetype plugin on
" filetype indent on

" Yanks go on clipboard instead.
set clipboard+=unnamed

" Writes on make/shell commands
set autowrite

" Add extra characters that are valid parts of variables
set iskeyword+=\$,-

" Keep three lines below the last line when scrolling
set scrolloff=3

" Switch to an existing buffer if one exists
" set switchbuf=useopen

" Make vim completion popup menu work like in an IDE
set completeopt=menuone,longest,preview

" Show some line numbers the nice way
set relativenumber
set number

" Automatically reload changes if detected
set autoread

" code folding; using 3 open/closing braces
" http://vim.wikia.com/wiki/Folding
set foldmethod=marker

" Enable paste mode
set pastetoggle=<F2>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Hide the mouse pointer while typing
set mousehide

" Show the current mode
set showmode

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Set up the gui cursor to look nice
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

"###################################################
"# => VIM UI
"###################################################

" Show cursorline
set cul
" Show cursorcolumn
" set cuc

" Make the command area two lines high
set cmdheight=2

" Set the title of the window in the terminal to the file
set title

" Show invisible caracters
set list
" show trailing spaces as dots
" set listchars+=trail:•
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
" set showbreak=↪
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*~,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,
    \*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,
    \*.gif,.DS_Store,*.aux,*.out,*.toc,*.tmp,*.pyc,*.cabal-sandbox,
    \*.swo

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" change highlight color
""hi Visual guifg=White guibg=LightBlue gui=none

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"#############################
"# => Files, backups and undo
"#############################

" Turn backup off
" set backupdir=~/.vim/.backup/
" set directory=~/.vim/.tmp/
set nobackup
set nowb
set noswapfile

"##################################
"# => Text, tab and indent related
"##################################

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" Remember info about open buffers on close
set viminfo^=%

"###################
"# => Status line
"###################

" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" set stl=%f\ %m\ %r%{HasPaste()}%fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]\ Type:%Y

" Turn off some vim logging stuff to .viminfo
set viminfo=<0,'100,<50,s10,h

