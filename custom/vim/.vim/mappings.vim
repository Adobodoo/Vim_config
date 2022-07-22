"Common
let mapleader=','
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
nnoremap <c-q> <c-v>

"multi window
nnoremap <c-j> <c-w>j "{{{
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l "}}}

"buffer config
set hidden
nmap <leader>t :enew<cr>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bl :ls<CR>
nmap <leader>be :bp <BAR> bd #<CR>
nmap <leader>bq :bp <BAR> bd! #<CR>

"ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Quick run via <F5>
nnoremap <F5> :call <SID>compile_and_run()<CR>

augroup SPACEVIM_ASYNCRUN
    autocmd!
    " Automatically open the quickfix window
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! -rows=8 gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       "exec "AsyncRun! g++ -std=c++17 % -o %<; time ./%<"
      exec "AsyncRun -rows=8 -mode=term g++ -std=c++17 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! -rows=8  javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! -rows=8 time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! -rows=8  time python %"
    endif
endfunction
