return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- 禁用默认的 K 键
    table.insert(keys, { "K", false })
    -- 添加新的 gh 键用于 hover
    table.insert(keys, { "gh", vim.lsp.buf.hover, desc = "Hover" })
  end,
}
