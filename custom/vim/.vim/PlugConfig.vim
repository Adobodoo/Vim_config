"#############################
"# => Plugins configurations
"#############################

" ##################
" # python-mode settings
" ##################
let g:pymode = 1
let g:pymode_folding = 0
let g:pymode_indent = 1
let g:pymode_doc = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_rope_show_doc_bind = ""
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport_modules = ['os', 'sys']
let g:pymode_lint_checker = ["pyflakes", "pep8" ]
let g:pymode_syntax_print_as_function = 1
let g:pymode_trim_whitespaces = 1
" show documentation for current word
let g:pymode_doc_bind = 'K'
" Check code on every save (if file has been modified)
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
" Turn off plugin's warnings
let g:pymode_warnings = 1
let g:syntastic_python_pylint_post_args="--max-line-length=180"


" ##################
" # CtrlP settings
" ##################
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_height = 30
let g:ctrlp_mru_files = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_open_new_file = 't'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Excluding version control directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*  " Windows ('noshellslash')


" ##################
" # NERDTree settings
" ##################
let g:NERDTreeIgnore=[
            \ '\.pyc$', '\~$', '\.DS_Store', '\.ropeproject',
            \ '\.swap', '\.git*',
            \ ]
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0


" ##################
" # UtilSnips settings
" ##################
" Trigger configuration
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" multiple-cursor Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'



" syntastic options
" See mappings.vim for syntastic mappings
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" neocomplete enabled
let g:neocomplete#enable_at_startup = 1

" SuperTab settings
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
let g:haskellmode_completion_ghc = 1


" Markdown
let g:vim_markdown_folding_disabled = 1
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
" let g:pandoc#filetypes#pandoc_markdown = 0

let g:markdown_fenced_languages = ['bash=sh', 'css', 'django', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'erb=eruby', 'ruby', 'sass', 'xml', 'html']
let g:vim_markdown_fenced_languages = ['bash=sh', 'css', 'django', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'erb=eruby', 'ruby', 'sass', 'xml', 'html']

"ctrlp config
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'


" Airline Config
let g:airline_section_x = ''

let g:airline_section_y = 'Buffer:%{bufnr("%")} '
"let g:airline_section_z = ''
"variable names                default contents
"--------------------------------------------------------------------------
"let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
"let g:airline_section_b       (hunks, branch)[*]
"let g:airline_section_c       (bufferline or filename, readonly)
"let g:airline_section_gutter  (csv)
"let g:airline_section_x       (tagbar, filetype, virtualenv)
"let g:airline_section_y       (fileencoding, fileformat, 'bom', 'eol')
"let g:airline_section_z       (percentage, line number, column number)
"let g:airline_section_error   (ycm_error_count, syntastic-err, eclim, "languageclient_error_count)
"let g:airline_section_warning (ycm_warning_count, syntastic-warn, "languageclient_warning_count, whitespace)

