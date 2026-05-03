-- This is an external plugin not included in LazyVim
return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "gw",
      "<cmd>lua require('spider').motion('w')<CR>",
      mode = { "n", "o", "x" },
      desc = "Spider move to start of next word",
    },
    {
      "gb",
      "<cmd>lua require('spider').motion('b')<CR>",
      mode = { "n", "o", "x" },
      desc = "Spider move to start of previous word",
    },
  },
}
