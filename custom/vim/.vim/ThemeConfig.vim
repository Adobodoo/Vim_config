""let g:gruvbox_contrast_dark="hard"
""set background=dark
""autocmd vimenter * colorscheme gruvbox

""set AirlineTheme solarized
"AirlineTheme solarized
""let g:airline_solarized_bg='dark'

" Smarter tab line 활성화: 모든 파일 버퍼 출력
let g:airline#extensions#tabline#enabled = 1

" Tab line 구분자 '|' 로 설정
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Tab line 에 파일명만 출력되도록 설정
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Powerline-font 활성화
let g:airline_powerline_fonts = 1
