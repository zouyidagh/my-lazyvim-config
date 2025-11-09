-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- jj to escape
map("i", "jj", "<Esc>", { desc = "Exit Insert Mode" })

-- Ctrl-C to copy
map("i", "<C-c>", "<Esc>yya", { desc = "Copy Line" })
map({"n","v"}, "<C-c>", '"+y', { desc = "Copy to Clipboard" })

-- Ctrl-V to paste
map("i", "<C-v>", "<C-r>+", { desc = "Paste from Clipboard" })
map({"n","v"}, "<C-v>", '"+p', { desc = "Paste from Clipboard" })

-- Clear search highlighting
map("n", "<C-n>", ":nohl<CR>", { desc = "Clear Search Highlighting", silent = true })

-- Buffer control
-- LazyVim uses buffers instead of tabs, mapping to buffer operations
map("n", "<leader>tt", "<cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin Buffer" })
map("n", "<leader>tn", "<cmd>enew<CR>", { desc = "New Buffer" })
map("n", "<leader>to", function() Snacks.bufdelete.other() end, { desc = "Delete Other Buffers" })
map("n", "<leader>th", "<cmd>bfirst<CR>", { desc = "First Buffer" })
map("n", "<leader>tj", "<cmd>BufferLineMovePrev<CR>", { desc = "Move Buffer Left" })
map("n", "<leader>tk", "<cmd>BufferLineMoveNext<CR>", { desc = "Move Buffer Right" })
map("n", "<leader>tl", "<cmd>blast<CR>", { desc = "Last Buffer" })

-- Stronger J/K for half-page scrolling
map("n", "J", "<C-d>", { desc = "Scroll Down Half Page" })
map("n", "K", "<C-u>", { desc = "Scroll Up Half Page" })

-- Jump history
map("n", "<leader>i", "<C-i>", { desc = "Jump Forward" })
map("n", "<leader>o", "<C-o>", { desc = "Jump Backward" })

-- Toggle terminal (Change LazyVim default Ctrl-\)
map({"n","t"}, "<leader>/",function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
