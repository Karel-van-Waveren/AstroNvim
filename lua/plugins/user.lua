-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        doc_lines = 0,
        floating_window = true,
        hint_prefix = "> ",
        handler_opts = {
          border = "rounded",
        },
      }
    end,
  },
  -- highlight similar words
  {
    "RRethy/vim-illuminate",
    opts = {
      delay = 10,
    },
  },
  -- ghost text
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, config)
      config.experimental = {
        ghost_text = true,
      }
      return config
    end,
  },
  -- cat
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠲⠋⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀",
            "⢀⣤⣶⣶⡴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣯⠖⠀⢠⠠⣼⣦⠀⠀⠀⠀⠀⠀⠀",
            "⢸⡇⠉⠉⠓⠟⠟⢲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⠿⠁⠀⠀⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠀",
            "⢸⣗⠀⡇⠀⢄⠀⠒⠊⠙⢦⣀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣿⡭⠉⠉⠉⠉⠉⠙⠛⠟⠃⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀",
            "⢸⣿⠀⠁⠀⠈⢳⡀⠀⠀⠈⢿⠿⣷⣲⣶⣶⣿⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠶⢶⣦⣄⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀",
            "⠘⣷⠚⣤⠀⠀⠀⠻⢀⠀⠀⢸⡾⠛⣭⡽⠋⢀⣠⣴⣶⣦⠄⠀⠀⠀⠀⠴⠦⠤⠴⠶⢤⡀⠉⠉⠉⠚⠻⠧⣄⠀⠀⠀⠀⠀",
            "⠀⢹⣿⣿⣶⣄⠀⠀⠈⣀⠀⠉⠀⠀⣹⣤⡴⠿⠟⠛⠉⠀⠀⢀⣠⠴⡖⣀⣠⣤⣤⣤⣤⣽⣂⡀⠀⠀⠀⠈⢮⣣⡀⠀⠀⠀",
            "⠀⠀⠻⣦⠙⠿⢧⠀⠀⣿⠆⠀⣆⣰⡏⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣄⣄⠀⠙⢷⡀⠀⠀",
            "⠀⠀⠀⠹⣶⠀⠀⢀⡈⠀⠀⣰⣿⣿⠁⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡁⠀⠈⣷⠀⠀",
            "⠀⠀⠀⠀⠘⣧⣤⣤⢀⣠⣮⣿⣿⠇⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡄⣥⠙⢦⠀",
            "⠀⠀⠀⠀⠀⢸⣿⣿⣾⣿⣿⣿⠃⠀⠀⠀⠀⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⡀⢸⡄",
            "⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⡟⢀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠃⢼⡇",
            "⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⠇⣸⠀⠀⠀⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢸⠁",
            "⠀⠀⠀⠀⠀⠀⠀⢽⣿⣿⣿⣿⡟⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⣼⣼⡿⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠿⣿⣿⣿⠅⠀⠀⠀⠀⠀⠈⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⣹⡿⠃⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⢰⠿⠟⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠿⠿⠿⠿⠿⠛⠛⠙⠁⠀⠀⡀⠀⣠⠟⠁⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⢀⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⢣⣾⠃⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⢐⣞⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⠿⠋⠠⢼⠋⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⡼⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠁⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡦⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢹⠀⠀⠀⠀⠀",
          }, "\n"),
        },
      },
    },
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
}
