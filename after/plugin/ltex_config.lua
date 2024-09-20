require('lspconfig').ltex.setup({
  filetypes = {  "markdown", "md", "tex" },  flags = { debounce_text_changes = 300 },
  settings = {
    ltex = {
      language = "en-US",
      setenceCacheSize = 2000,
      additionalRules = {
      	enablePickyRules = true,
      	motherTongue = "ca-FR",
      },
      trace = { server = "verbose" },
      disabledRules = {},
      hiddenFalsePositives = {},
    }
  },
  on_attach = on_attach,
})
