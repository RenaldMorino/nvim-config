local wk = require('which-key')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  --vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  --vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  wk.add({
    { "<leader>ntt", function() api.tree.toggle() end, desc = "Toggle nvim-tree" },
    { "<leader>ntf", function() api.tree.find_file() end, desc = "Find file in nvim-tree" },
    { "<leader>ntr", function() api.tree.refresh() end, desc = "Refresh nvim-tree" },
    { "<leader>ntc", function() api.tree.change_root_to_node() end, desc = "Change root to node in nvim-tree" },
    { "<leader>ntd", function() api.tree.toggle_dotfiles() end, desc = "Toggle dotfiles in nvim-tree" },
  })
end

-- empty setup using defaults
require("nvim-tree").setup {
  on_attach = my_on_attach,
}
