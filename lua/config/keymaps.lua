vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", ":make <CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set('n', '<leader>ih', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle Inlay Hints" })
