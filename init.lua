-- GLOBAL VARIABLES
opt = vim.opt; -- global variable for vim options
map = vim.keymap; -- global variable for vim keymaps
cmd = vim.cmd; -- global variable to execute vim commands

-- PLUGINS
require 'paq' {
    'savq/paq-nvim', -- including paq here will let paq manage itself
    -- other plugins
    'navarasu/onedark.nvim'
}

-- colorscheme
opt.termguicolors = true
onedark = require('onedark')
onedark.setup {
    style = 'warmer'
}
onedark.load()

-- netrw (yes it is a plugin)
-- TODO: map netrw to some <C-> shortcut
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
cmd('let g:netrw_banner = 0')
cmd('let g:netrw_lifestyle = 3')

-- TODO: find some better way to write this
-- set netrw as default file explorer
-- in this case since @param {command} is a string, vim.api_nvim_exec is called
vim.cmd('autocmd FileType netrw nnoremap <buffer><silent> <CR> <CR>:<C-u>lua require("netrw").open()<CR>')

-- OPTIONS
-- line numbers
opt.number = true;

-- tabs
opt.shiftwidth = 4;
opt.softtabstop = 4;
opt.expandtab = false;

-- MAPPINGS
-- window navigation
map.set('n', '<C-j>', '<C-w>j');
map.set('n', '<C-k>', '<C-w>k');
map.set('n', '<C-h>', '<C-w>h');
map.set('n', '<C-l>', '<C-w>l');
