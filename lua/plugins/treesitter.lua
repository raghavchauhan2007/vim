return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').install({
      'c',
      'cpp',
      'python',
      'javascript',
      'typescript',
      'tsx',
      'html',
      'css',
      'lua',
    })

    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('treesitter_setup', { clear = true }),
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    })
  end
}
