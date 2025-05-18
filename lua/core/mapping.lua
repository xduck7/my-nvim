vim.g.mapleader = " "
-- Insert
vim.keymap.set('i', 'jj', '<Esc>')
--vim.api.nvim_set_keymap('i', '<Space>', '<Space>', { noremap = true, silent = true })
-- Buffer 
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>e', ':wq<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<leader><Tab>', ':BufferLineCyclePrev<CR>')
-- vim.keymap.set('n', '<leader>c', ':BufferLinePickClose<CR>')

-- Navigation
vim.keymap.set('n', '<s-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<s-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<s-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<s-l>', ':wincmd l<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '/', ':split<CR>')

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')

-- Lazy
vim.keymap.set('n', '<leader>l', ':Lazy<CR>')

-- Mason
vim.keymap.set('n', '<leader>m', ':Mason<CR>')
