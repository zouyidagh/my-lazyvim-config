-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use system clipboard requires xclip or wl-clipboard on Linux
-- See :h clipboard for more infomation

-- Disable auto format on save
vim.g.autoformat = false

-- Set default indentation to 4 spaces
vim.opt.tabstop = 4        -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
