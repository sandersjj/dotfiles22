call plug#begin()
  source ~/.dotfiles/vim/plugins.vim
call plug#end()
let g:sourcery#vim_dotfiles_path = '~/.dotfiles/vim'

call sourcery#init()

let g:test#php#phpunit#executable = 'dre ./vendor/bin/phpunit'

"source ~/.vim/init/general.vim
"source ~/.vim/init/leader.vim

" General settings ---------------------- {{{
filetype plugin indent on
syntax enable 
set foldlevelstart=0
colorscheme gruvbox

set list
set listchars=tab:>\ ,trail:~
let mapleader=','
set laststatus=3
" }}}
" Git related Stuff  ---------------------- {{{
function! s:add_branch()
  if empty(getline(1))
    call append(0, '['.substitute(FugitiveHead(),'^\([A-Z]\+-[1-9][0-9]*\).*$', '\1', '').']')
    normal kA
  endif
endfunction

augroup git_commit
  autocmd!
  autocmd FileType gitcommit call s:add_branch()
augroup END

function! s:open_branch_fzf(line)
  let l:parser = split(a:line)
  let l:branch = l:parser[0]
  if l:branch ==? '*'
    let l:branch = l:parser[1]
  endif
  execute '!git checkout ' . l:branch
endfunction

command! -bang -nargs=0 GCheckout
  \ call fzf#vim#grep(
  \   "git branch -v --all --sort=-committerdate --no-merged | grep -v HEAD | sed 's#remotes/[^/]*/##'", 0,
  \   {
  \     'sink': function('s:open_branch_fzf')
  \   },
  \   0
  \ )
" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

nnoremap ,gb :GCheckout<cr>
nnoremap gdh :diffget //2<CR>
" }}}
" FuzzyFinder and RG settings ---------------------- {{{

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
" }}}

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
"
" Comment script ---------------------- {{{
let s:comment_map = {
  \ "javascript": '\/\/',
  \ "php": '\/\/',
  \ "blade": '\/\/',
  \ "typescriptreact": '\/\/',
  \ "html": '{{#}}'
  \}

function! ToggleComment()
  if has_key(s:comment_map, &filetype)
    let comment_leader = s:comment_map[&filetype]
    
    if getline('.') =~ "^\\s*" . comment_leader . " "
      " uncomment the line
      execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
    else 
      if getline('.') =~ "^\\s*" . comment_leader
          " Uncomment the line
          execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
      else
          " Comment the line
          execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
      end
    end
  else
    echo "No comment leader found for filetype"
  end
endfunction
nnoremap <leader>/ :call ToggleComment()<cr>
vnoremap <leader>/ :call ToggleComment()<cr>
" }}}
" PHP file settings ---------------------- {{{
augroup php_files
  autocmd!
  au FileType php setlocal tabstop=4 shiftwidth=4 expandtab
augroup END 

augroup filtype_antlers
  autocmd!
  autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
augroup END

augroup filtype_javascript
  autocmd!
  autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

augroup filtype_css
  autocmd!
  autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END
" }}}
" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"""source ~/.vim/init/docker.vim
nnoremap <leader>c :let @+=expand('%') . ':' . line('.')<cr>

set tags=tags
