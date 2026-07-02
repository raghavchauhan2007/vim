vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP Actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})

local makeprg = vim.api.nvim_create_augroup('makeprg Configs', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = makeprg,
  pattern = 'c',
  callback = function()
    vim.opt_local.makeprg = 'clang -Wall -Wextra % -o %:r'
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = makeprg,
  pattern = 'cpp',
  callback = function()
    vim.opt_local.makeprg = 'clang++ -Wall -Wextra % -o %:r'
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = makeprg,
  pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
  callback = function()
    vim.opt_local.makeprg = 'bun run ./%'
    vim.opt_local.errorformat = [[\ error:\ %m,%E\ \ \ \ \ at\ %f:%l:%c,%-G%.%#]]
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = makeprg,
  pattern = 'python',
  callback = function()
    vim.opt_local.makeprg = 'python3 ./%'
  end,
})
