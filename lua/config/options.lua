vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.showmode = false
vim.opt.guicursor = ""
vim.opt.undofile = true
vim.opt.linebreak = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

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
