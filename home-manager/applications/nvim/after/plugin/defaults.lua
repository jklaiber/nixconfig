-- Set jk to escape
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

-- Nvim Tree Keymaps
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
-- NvimTree settings
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.api.nvim_set_keymap("n", "<C-,>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W><C-J>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W><C-k>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-W><C-l>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-W><C-h>", { noremap = true, silent = true })