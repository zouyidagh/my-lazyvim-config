return {
  "folke/snacks.nvim",
  opts = {},
  keys = {
    -- 禁用默认的 <leader>/ 键
    { "<leader>/", false },
    -- 添加 <C-/> 用于 Grep (Root Dir)
    {
      "<C-/>",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep (Root Dir)",
    },
  },
}
