vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('i', 'jk', '<Esc>')

-- Viusal
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- NvimTree
vim.keymap.set('n', '<c-t>', '')
vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')


