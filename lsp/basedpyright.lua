local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  
  filetypes = { 'python' },
  
  root_markers = { 
    'pyproject.toml', 
    'setup.py', 
    'setup.cfg', 
    'requirements.txt', 
    '.git' 
  },

  capabilities = capabilities,
  
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
        typeCheckingMode = 'standard',
      },
    },
  },
}
