local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'plaintex', 'bib' },
  root_markers = { '.git', '.latexmkrc', '.tex', '.texlabroot' },
  capabilities = capabilities,
  settings = {
    texlab = {
      build = {
        executable = 'latexmk',
        args = {
          '-lualatex',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
          '%f'
        },
        onSave = false,
        forwardSearchAfter = false,
      },
      chktex = {
        onOpenAndSave = false,
        onEdit = false,
      },
      latexFormatter = 'latexindent',
      latexindent = {
        ['local'] = nil,
        modifyLineBreaks = false,
      },
      bibtexFormatter = 'texlab',
      formatterLineLength = 80,
    },
  }
}
