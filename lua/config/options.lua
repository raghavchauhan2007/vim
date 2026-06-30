vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.showmode = false
vim.o.guicursor = ""
vim.o.undofile = true

vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●",
    source = "if_many",
  },
  signs = true, 
  underline = true, 
  severity_sort = true,
  update_in_insert = false, 
})
