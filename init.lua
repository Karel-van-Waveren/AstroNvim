return {
  -- colorscheme = "gruvbox-material",
  colorscheme = "kanagawa",
  -- colorscheme = "monokai-pro",
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
