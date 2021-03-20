
" Window navigation
noremap <leader>h :wincmd h<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>wv :vsplit<cr>
noremap <leader>ws :split<cr>

" Stay in visual mode after indenting
vnoremap < <gv
vnoremap > >gv

"" Move window to a new tab
noremap <leader>tt :wincmd T<CR>

" Tab navigation
noremap <leader>th :tabp<CR>
noremap <leader>tp :tabp<CR>
noremap <leader>tl :tabn<CR>
noremap <leader>tn :tabn<CR>
noremap <leader>tq :tabc<CR>

" Buffer navigation
noremap <leader>bb :buffer<Space>

" Toggle comments
map <leader>; <plug>NERDCommenterToggle

" Map execute this line
function! s:executor() abort
    if &ft == 'lua'
        call execute(printf(":lua %s", getline(".")))
    elseif &ft == 'vim'
        exe getline(".")
    endif
endfunction
nnoremap <leader>x :call <SID>executor()<CR>

" Source current buffer
function! s:source_current_buffer() abort
    if &ft == 'vim'
        :silent! write
        :source %
    elseif &ft == 'lua'
        :silent! write
        :luafile %
    endif
endfunction
map <leader>r :call <SID>source_current_buffer()<CR>
map <leader>R :silent! write<CR> :source %<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>pf <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>tb <cmd>Telescope builtin<cr>

" Compilation
nnoremap <F5> :call Compile()<CR>
inoremap <F5> <esc>: call Compile()<CR>

" Toggeling quickfix window
function! s:toggle_quickfix()
    if (empty(filter(getwininfo(), 'v:val.quickfix')))
        botright copen
        resize 14
        wincmd p
    else
        cclose
    endif
endfunction
nnoremap <leader>cd :call <SID>toggle_quickfix()<cr>

" Quickfix
nnoremap <leader>en :cn<cr>
nnoremap <C-j> :cn<cr>
nnoremap <leader>ep :cp<cr>
nnoremap <C-k> :cp<cr>

"" Lsp
" lspconfig
nnoremap ,ga :ClangdSwitchSourceHeader<cr>
