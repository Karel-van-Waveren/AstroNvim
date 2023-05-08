return {
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
}
