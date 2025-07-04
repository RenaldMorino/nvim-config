-- set shorter name for keymap function
local wk = require("which-key")

wk.add({
  { "<leader>tex", function() require("knap").toggle_autopreviewing() end, desc = "Toggle KNAP" },
})

-- F5 processes the document once, and refreshes the view
--kmap({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
--kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
--kmap({ 'n', 'v', 'i' },'<F7>', )

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
--kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)
