return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_b = { "diff", "diagnostics" },
        lualine_x = {},
        lualine_y = { "filetype" },
      },
    },
  },
}
