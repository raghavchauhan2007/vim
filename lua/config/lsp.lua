local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

local root_markers = { "compile_commands.json", "compile_flags.txt", ".git" }

local function get_root_dir(bufnr)
  local fname = vim.api.nvim_buf_get_name(bufnr)
  if fname == "" then
    return nil
  end

  local root_file = vim.fs.find(root_markers, { upward = true, path = fname })[1]
  if root_file then
    return vim.fs.dirname(root_file)
  end

  return vim.fs.dirname(fname)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp", "cuda" },
  callback = function(args)
    local root_dir = get_root_dir(args.buf)
    if not root_dir then
      return
    end

    vim.lsp.start(vim.lsp.config({
      name = "clangd",
      cmd = { "clangd" },
      root_dir = root_dir,
      capabilities = capabilities,
    }))
  end,
})
