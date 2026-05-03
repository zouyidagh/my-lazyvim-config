return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ['*'] = {
        keys = {
          -- 禁用默认的 K 键
          { "K", false },
          -- 添加新的 gh 键用于 hover
          { "gh", function() return vim.lsp.buf.hover() end, desc = "Hover" },
        },
      },
    },
  },
}
