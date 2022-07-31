Plug 'jesseleite/vim-sourcery'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'justinmk/vim-dirvish'
Plug 'pangloss/vim-javascript'
Plug 'Quramy/tsuquyomi'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dense-analysis/ale'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'camilledejoye/phpactor-mappings'
Plug 'vim-airline/vim-airline'
Plug 'jesseleite/vim-agriculture'
Plug 'mattn/emmet-vim'
Plug 'wsdjeg/vim-fetch'
" makes vim autocomplete (), [], {}, '', "", etc
Plug 'jiangmiao/auto-pairs'
Plug 'matthewbdaly/vim-statamic-antlers'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'
Plug 'vim-test/vim-test'
" matches pairs of things (if-else, tags, etc)
Plug 'andymass/vim-matchup'

Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'jwalton512/vim-blade'
" tmux integragie
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
" Deze fixt een bug in plugins
" Soort search en replace 
Plug 'tpope/vim-abolish'
" Voegt mappings toe zoals [ + space voegt regel boven of onder toe terwijl je
" met cursor op dezelfde regel blijft staan.
Plug 'tpope/vim-unimpaired'
" eigen mappings van tpope ter inspiratie
Plug 'tpope/vim-ragtag'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Autocompletion
Plug 'onsails/lspkind-nvim'
Plug 'roxma/nvim-yarp'  " dependency
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
