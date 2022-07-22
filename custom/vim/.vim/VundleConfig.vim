
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
	  " MacOSX
	  let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
  else
	  " Linux
	  let g:ycm_server_python_interpreter = '/usr/bin/python3'
  endif
endif
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {}
let g:ycm_show_diagnostics_ui = 1   " ycm's syntax highlighting
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <leader>g :YcmCompleter GoTo<CR>
""nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
""nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>t :YcmCompleter GetType<CR>
""nnoremap <leader>p :YcmCompleter GetParent<CR>

" vim-cpp syntax highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
