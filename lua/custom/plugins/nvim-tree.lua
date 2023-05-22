-- File: lua/custom/plugins/autopairs.lua

return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup()
  end,
}

