local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}


map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)


-- NERDTree options
map('n', '<C-N>', ':NERDTreeToggle<CR>', default_opts)


-- TagBar
map('n', '<F8>', ':TagbarToggle<CR>', default_opts)

-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
