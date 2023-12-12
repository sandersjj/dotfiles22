-- plugins.lua
-- Bootstrap Lazyplugins
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Color scheme
  { import = 'plugins.tokyonight' },
  { import = 'plugins.lspconfig' },
  { import = 'plugins.cmp' },

  -- Fuzzy finder
  { import = 'plugins.telescope' },

  -- Fzf and Fzf.vim
  -- {'junegunn/fzf', dir = '~/.fzf', run = './install --all'},
  { 'junegunn/fzf.vim' },

  -- Miscellaneous plugins
  { import = 'plugins/vim-rooter' },
  { 'leafgarland/typescript-vim' },
  { 'peitalin/vim-jsx-typescript' },

  -- Terminal integration
  { import = 'plugins/floaterm' },

  -- Git
  { import = 'plugins/gitsigns' },

  -- tpope's plugins
  { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },
  { 'tpope/vim-surround' },
  { 'tpope/vim-sensible' },
  { 'tpope/vim-repeat' },
  { 'tpope/vim-eunuch' },

  -- Automatically add closing brackets, quotes, etc.
  { 'windwp/nvim-autopairs', config = true },

  -- Treesitter
  { import = 'plugins.treesitter' },
  { 'jwalton512/vim-blade'},
  -- PHP
  { import ='plugins.phpactor' },
  -- Vue
  'posva/vim-vue',

  -- Miscellaneous plugins
  { import = 'plugins.neo-tree' },
  { 'pangloss/vim-javascript' },
  { 'maxmellon/vim-jsx-pretty' },
  { 'vim-airline/vim-airline' },
  { 'jesseleite/vim-agriculture' },
  { 'mattn/emmet-vim' },
  { 'wsdjeg/vim-fetch' },
  { 'NLKNguyen/papercolor-theme' },
  { 'vim-airline/vim-airline-themes' },
  { 'windwp/nvim-autopairs' },
  -- 'jiangmiao/auto-pairs'
  { 'matthewbdaly/vim-statamic-antlers' },

  -- LSP
  -- 'nvim_lsp/util'
  { 'ray-x/lsp_signature.nvim' },

  -- Testing
  { import = 'plugins/vim-test' },

  -- Matching pairs
  { 'andymass/vim-matchup' },

  -- PHP specific plugins
  -- {'stanAngeloff/php.vim', for = 'php'}
  -- {'stephpy/vim-php-cs-fixer', for = 'php'}

  -- Tmux integration
  { 'tpope/vim-dispatch' },
  { 'tpope/vim-commentary' },
  { import =  'plugins.copilot' },
}, {
  install = {
    colorscheme = { 'tokyonight', 'habamax' },
  },
})
