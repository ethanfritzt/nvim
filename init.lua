-- GLOBAL VARIABLES
opt = vim.opt;
map = vim.keymap;

-- PLUGINS

-- OPTIONS
-- line numbers
opt.number = true;

-- tabs
opt.shiftwidth = 4;
opt.softtabstop = 4;
opt.expandtab = false;

-- colorscheme

-- MAPPINGS
-- window navigation
map.set('n', '<C-j>', '<C-w>j');
map.set('n', '<C-k>', '<C-w>k');
map.set('n', '<C-h>', '<C-w>h');
map.set('n', '<C-l>', '<C-w>l');

