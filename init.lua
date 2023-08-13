return {
  -- colorscheme = "gruvbox-material",
  -- colorscheme = "gruvbox-baby",
  colorscheme = "kanagawa",
  -- colorscheme = "kanagawa-lotus",
  -- colorscheme = "monokai-pro",
  updater = { channel = "nightly" },
  lsp = {
    capabilities = {
      textDocument = {
        completion = {
          completionItem = {
            snippetSupport = false,
          },
        },
      },
    },
  },
}
