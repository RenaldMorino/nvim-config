local builtin = require('telescope.builtin')
local wk = require('which-key')

wk.add({
  { "<C-p>", builtin.find_files, desc = "Find files" },
  { "<leader>gf", builtin.git_files, desc = "Git files" },
  { "<C-f>", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
  end, desc = "Find string" },
})
