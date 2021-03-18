" Nerd commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'zdc': { 'left': '//','right': '' } }
let g:NERDCreateDefaultMappings = 0

" Fswitch
au! BufEnter *.cpp let b:fswitchdst = 'h,hpp' | let b:fswitchlocs = '../include/*/'
au! BufEnter *.h let b:fswitchdst = 'cpp,c' | let b:fswitchlocs = '../../source/'

" Airline
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_extensions = ['branch', 'whitespace']
" let g:airline_extensions = ['branch', 'tabline', 'whitespace']
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z', 'warning', 'error']]
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" Telescope
luafile $CONFIG_TELESCOPE

"" Delimate
" Fix coc/delimate binding
imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<Plug>delimitMateCR"
" Delimate additions
inoremap {<CR> {<CR>}<Esc>O

" Lsp
luafile $CONFIG_LSPCONFIG
