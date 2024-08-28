local wk = require("which-key")

vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")

--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")

--vim.keymap.set("x", "<leader>p", "\"_dP")

--vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

wk.add({
  { "<leader>pv", vim.cmd.Ex, desc = "Open explorer" },
  { "J", ":m '>+1<CR>gv=gv", desc = "Move visual block down", mode = "v" },
  { "K", ":m '<-2<CR>gv=gv", desc = "Move visual block up", mode = "v" },
  { "<C-d>", "<C-d>zz", desc = "Scroll down" },
  { "<C-u>", "<C-u>zz", desc = "Scroll up" },
  { "n", "nzzzv", desc = "Move to next search result" },
  { "N", "Nzzzv", desc = "Move to previous search result" },
  { "<leader>p", "\"_dP", desc = "Paste without yanking", mode = "x" },
  { "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Search and replace" },
})
