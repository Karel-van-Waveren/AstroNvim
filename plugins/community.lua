return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    opts = {
      tools = {
        hover_actions = {
          auto_focus = true,
        },
        inlay_hints = {
          auto = false,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          -- override here. call lsp on attach and then add own custom logic.
          require("astronvim.utils.lsp").on_attach(client, bufnr)
          local rt = require "rust-tools"

          local utils = require "astronvim.utils"

          utils.set_mappings({
            n = {
              ["K"] = { rt.hover_actions.hover_actions, desc = "Rust Hover Actions" },
            },
          }, { buffer = bufnr })
        end,
      },
    },
  },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.utility.transparent-nvim" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.project.nvim-spectre" },
}
