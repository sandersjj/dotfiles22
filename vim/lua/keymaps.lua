-- vim.g.mapleader = ','
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Quickly open config file 
vim.keymap.set('n', '<Leader>ev', ':e ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader>y', '"+y');

--  mappings: gitsigns
vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', 'gG', ':Gitsigns undo_stage_hunk<CR>')
vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')

-- mappings: phpactor
vim.keymap.set('n', '<leader>pm', ':PhpactorContextMenu<CR>')
vim.keymap.set('i', '<CapsLock>', '<Esc>', {noremap = true})
vim.keymap.set('n', '<CapsLock>', '<Esc>', {noremap = true})
vim.keymap.set('v', '<CapsLock>', '<Esc>', {noremap = true})
vim.keymap.set('n', '<leader>y', '"+Y', {noremap = true});

vim.keymap.set('n', '<leader><leader>', ':w<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
