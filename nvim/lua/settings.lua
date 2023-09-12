
local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

vim.cmd [[autocmd FileType json,conf autocmd BufWritePre <buffer> %!python3 -m json.tool]]
vim.cmd [[autocmd BufNewFile,BufRead *.conf set syntax=json]]

opt.colorcolumn = '80'							-- Разделитель на 80 символов
opt.number = true                   -- Включаем нумерацию строк
opt.termguicolors = true      			--  24-bit RGB colors
opt.tabstop = 4											-- 1 tab == 4 spaces	
opt.shiftwidth = 4									-- shift 4 spaces when tab
opt.smartindent = true   						-- autoindent new lines
opt.expandtab = true     						-- use spaces instead of tabs
-- autocompletion
opt.completeopt = {'menu', 'menuone', 'noselect'}

cmd.colorscheme 'catppuccin-mocha'

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').gofmt()
  end,
  group = format_sync_grp,
})

local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs,*.py",
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 200 })
  end,
  group = format_sync_grp,
})
