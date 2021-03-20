" Nerd commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'zdc': { 'left': '//','right': '' } }
let g:NERDCreateDefaultMappings = 0

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
" Delimate additions
inoremap {<CR> {<CR>}<Esc>O

" Lsp
luafile $CONFIG_LSPCONFIG



"" completion-lsp
" The next line is replaced by some code in $CONFIG_LSPCONFIG included above
" lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
set shortmess+=c
let g:completion_sorting = "length"
" let g:completion_matching_strategy_list = ['fuzzy', 'exact', 'substring', 'all']
let g:completion_matching_strategy_list = ['fuzzy', 'exact', 'substring' ]
let g:completion_matching_smart_case = 1

