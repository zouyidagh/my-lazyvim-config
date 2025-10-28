-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Insert mode mappings
-- jj to escape (like VSCode Vim config)
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Clear search highlighting
map("n", "<C-n>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

-- Tab/Buffer control
-- LazyVim uses buffers instead of tabs, mapping to buffer operations
map("n", "<leader>tn", "<cmd>enew<CR>", { desc = "New buffer" })
map("n", "<leader>to", "<cmd>only<CR>", { desc = "Close other windows" })
map("n", "<leader>th", "<cmd>bfirst<CR>", { desc = "First buffer" })
map("n", "<leader>tj", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })
map("n", "<leader>tk", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })
map("n", "<leader>tl", "<cmd>blast<CR>", { desc = "Last buffer" })

-- Navigate between buffers (H/L for prev/next)
map("n", "H", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "L", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Stronger J/K for half-page scrolling
map("n", "J", "<C-d>", { desc = "Scroll down half page" })
map("n", "K", "<C-u>", { desc = "Scroll up half page" })

-- Jump history
map("n", "<leader>i", "<C-i>", { desc = "Jump forward" })
map("n", "<leader>o", "<C-o>", { desc = "Jump backward" })

-- Toggle terminal (Change LazyVim default Ctrl-\)
map("n", "<leader>/", function() Snacks.terminal() end, { desc = "Toggle Terminal" })
map("t", "<leader>/", function() Snacks.terminal() end, { desc = "Toggle Terminal" })
