local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require("which-key")

vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#6e6a86")
vim.cmd("highlight! HarpoonActive guibg=#232136 guifg=#e0def4")
vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#9ccfd8")
vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#286983")
vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")

wk.add({
  { "<C-e>", ui.toggle_quick_menu, desc = "Toggle Harpoon menu" },
  { "<leader>a", mark.add_file, desc = "Add file to harpoon" },
  { "<C-h>", function() ui.nav_file(1) end, desc = "Navigate to harpoon file 1" },
  { "<C-t>", function() ui.nav_file(2) end, desc = "Navigate to harpoon file 2" },
  { "<C-n>", function() ui.nav_file(3) end, desc = "Navigate to harpoon file 3" },
  { "<C-s>", function() ui.nav_file(4) end, desc = "Navigate to harpoon file 4" },
  { "<leader>1", function() ui.nav_file(1) end, desc = "Navigate to harpoon file 1" },
  { "<leader>2", function() ui.nav_file(2) end, desc = "Navigate to harpoon file 2" },
  { "<leader>3", function() ui.nav_file(3) end, desc = "Navigate to harpoon file 3" },
  { "<leader>4", function() ui.nav_file(4) end, desc = "Navigate to harpoon file 4" },
  { "<leader>5", function() ui.nav_file(5) end, desc = "Navigate to harpoon file 5" },
  { "<leader>6", function() ui.nav_file(6) end, desc = "Navigate to harpoon file 6" },
  { "<leader>7", function() ui.nav_file(7) end, desc = "Navigate to harpoon file 7" },
  { "<leader>8", function() ui.nav_file(8) end, desc = "Navigate to harpoon file 8" },
  { "<leader>9", function() ui.nav_file(9) end, desc = "Navigate to harpoon file 9" },
  { "<leader>0", function() ui.nav_file(0) end, desc = "Navigate to harpoon file 0" },
})

require("harpoon").setup({
    tabline= true,
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    },
})
