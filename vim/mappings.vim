" Leader
let mapleader = ','
" Esc / crtl-c
inoremap jj <Esc>

" Clear search highlighting
nmap <silent> <esc> :noh<cr>
" edit and source vimrc 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Map ; to :
nnoremap ; :
vnoremap ; :

" map <leader>b to open buffers
nnoremap <leader>b :Buffers<cr>

" map <esc> to cancel search highlighting
nnoremap <esc> :noh<cr>


" map Ctr-e to Append at the end 
inoremap <C-e> <Esc><S-A>

" Mappings: sourcery
function! SourceryMappings()
  nmap <buffer> gp <Plug>SourceryGoToRelatedPluginDefinition
  nmap <buffer> gm <Plug>SourceryGoToRelatedMappings
  nmap <buffer> gc <Plug>SourceryGoToRelatedConfig
endfunction

" Mappings: telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Mappings: vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Mappings: fugitive 
nnoremap <leader>gs :Git<cr>
" <leader>, is save
nno <leader>, :w<cr>

" Mappings: cmp
