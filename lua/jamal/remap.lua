vim.g.mapleader = " "

-- Bring up explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
