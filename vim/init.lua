-- init.lua
require('keymaps')
require('options')
require('plugins')

-- source the init.lua on save 
-- local setup_group  = vim.api.nvim_create_augroup("SetupAuGroup", {clear =true})

vim.cmd.inoreabbrev({
    "<buffer>",
    "!c",
    "console.log();<left><left>",
})

FZF_DEFAULT_OPTS = '--bind <leader>a:select-all'
