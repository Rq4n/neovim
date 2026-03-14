local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- split window
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- move window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)
