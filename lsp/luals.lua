local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.VIMRUNTIME }
      }
    }
  }
}
