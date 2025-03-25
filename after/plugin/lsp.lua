local lsp_zero = require('lsp-zero')
local wk = require('which-key')

lsp_zero.on_attach(function(client, bufnr)
  --local opts = {buffer = bufnr, remap = false}

  --vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  --vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  --vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  --vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  --vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  --vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  --vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  --vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  --vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  --vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  wk.add({
    { "gd", function() vim.lsp.buf.definition() end, desc = "Go to definition"},
    { "K", function() vim.lsp.buf.hover() end, desc = "Show hover"},
    { "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, desc = "Workspace symbol"},
    { "<leader>vd", function() vim.diagnostic.open_float() end, desc = "Open diagnostics"},
    { "[d", function() vim.diagnostic.goto_next() end, desc = "Next diagnostic"},
    { "]d", function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic"},
    { "<leader>vca", function() vim.lsp.buf.code_action() end, desc = "Code action"},
    { "<leader>vrr", function() vim.lsp.buf.references() end, desc = "References"},
    { "<leader>vrn", function() vim.lsp.buf.rename() end, desc = "Rename"},
    { "<C-h>", function() vim.lsp.buf.signature_help() end, desc = "Signature help", mode="i"},
  })
end)

require('mason').setup({
  registries = {
    'github:mason-org/mason-registry',
    'github:crashdummyy/mason-registry',
  },
})
require('mason-lspconfig').setup({
  ensure_installed = {'jdtls', 'bashls', 'clangd', 'cssls', 'eslint', 'emmet_ls', 'html', 'jsonls', 'ltex', 'lua_ls', 'marksman', 'stylelint_lsp', 'tailwindcss', 'ts_ls', 'yamlls', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
    function (glslls)
      require('lspconfig').glslls.setup(glslls)
    end
  }
})
--require("lspconfig").glslls.setup({})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'nvim_lua'},
	},
	formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-Space>'] = cmp.mapping.confirm({ select = true }),
	}),
})
