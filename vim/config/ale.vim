let b:ale_fixes = ['prettier', 'eslint']
let g:ale_fix_one_save = 1
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['prettier', 'eslint'],
      \}

let g:php_cs_fixer_level = "psr2"
