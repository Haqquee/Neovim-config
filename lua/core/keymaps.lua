vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('i', 'jk', '<Esc>')

-- Viusal
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- NvimTree
vim.keymap.set('n', '<c-t>', '')
vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')

-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

--
vim.keymap.set('n', 'dw', 'vb')
-- Select All
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
vim.keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
vim.keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
vim.keymap.set('', 's<left>', '<C-w>h')
vim.keymap.set('', 's<up>', '<C-w>k')
vim.keymap.set('', 's<down>', '<C-w>j')
vim.keymap.set('', 's<right>', '<C-w>l')
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sl', '<C-w>l')
vim.keymap.set('n', '<C-w><left>', '<C-w><')
vim.keymap.set('n', '<C-w><right>', '<C-w>>')
vim.keymap.set('n', '<C-w><up>', '<C-w>+')
vim.keymap.set('n', '<C-w><down>', '<C-w>-')
