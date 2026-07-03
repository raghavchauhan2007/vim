local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
  cmd = { 'bunx', '--bun', 'vtsls', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact'
  },
  root_markers = {
    'package.json',
    'tsconfig.json',
    'jsconfig.json',
    '.git'
  },
  capabilities = capabilities,

  settings = {
    vtsls = {
      autoUseWorkspaceTsdk = true,

      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
        },
      },
    },

    typescript = {
      updateImportsOnFileMove = { enabled = "always" },
      suggest = {
        completeFunctionCalls = true,
      },
    },

    javascript = {
      updateImportsOnFileMove = { enabled = "always" },
      suggest = {
        completeFunctionCalls = true,
      },
    },
  },
}
