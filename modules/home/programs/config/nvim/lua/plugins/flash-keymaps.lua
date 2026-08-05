-- ~/.config/nvim/lua/plugins/flash-keymaps.lua

return {
  {
    "folke/flash.nvim",
    keys = {
      {
        "<C-Space>",
        false,
        mode = { "n", "x", "o" },
      },
    },
  },
}