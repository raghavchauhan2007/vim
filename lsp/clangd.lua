local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_lsp = require('cmp_nvim_lsp')
capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())

return {
    cmd = { 'clangd' },
    root_markers = { '.clangd', 'compile_commands.json' },
    filetypes = { 'c', 'cpp' },
    capabilities = capabilities
}
