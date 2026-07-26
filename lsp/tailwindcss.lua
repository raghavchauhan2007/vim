local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'html', 'css', 'javascript', 'javascriptreact',
    'typescript', 'typescriptreact', 'vue', 'svelte', 'astro'
  },

  capabilities = capabilities,

  root_markers = {
    'tailwind.config.js',
    'tailwind.config.ts',
    'postcss.config.js',
    'package.json'
  },

  settings = {
    tailwindCSS = {
      validate = true,
      experimental = {
        classRegex = {
          { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*)\"'" },
          { "cx\\(([^)]*)\\)",  "[\"'`]([^\"'`]*)\"'" },
        },
      },
    },
  },
}
