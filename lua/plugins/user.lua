-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  --  disable rust_analyzer install by mason
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function() return true end,
      },
    },
  },
  -- remove buffers and git_status from neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.source_selector = {
        winbar = true, -- toggle to show selector on winbar
        statusline = false,
        sources = {
          { source = "filesystem" },
          -- { source = "buffers" },
          -- { source = "git_status" },
        },
      }
      return opts
    end,
  },
  -- show method vars
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
    opts = {},
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
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
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
      }
      return opts
    end,
  },
  {
    "AstroNvim/astrolsp",
    opts = {
      config = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = {
                overrideCommand = {
                  "cargo",
                  "clippy",
                  "--workspace",
                  "--message-format=json",
                  "--all-targets",
                  "--all-features",
                  "--",
                  "-W",
                  "clippy::pedantic",
                  "-W",
                  "clippy::nursery",
                  "-A",
                  "clippy::missing-panics-doc",
                  "-A",
                  "clippy::missing-errors-doc",
                  "-A",
                  "clippy::cast-possible-truncation",
                  "-A",
                  "clippy::cast-sign-loss",
                  "-A",
                  "clippy::cast-precision-loss",
                  "-A",
                  "clippy::future_not_send",
                  "-A",
                  "clippy::significant-drop-tightening",
                },
              },
            },
          },
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
