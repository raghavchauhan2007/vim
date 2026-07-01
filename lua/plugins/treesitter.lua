return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',

  config = function()

    local config = require("nvim-treesitter.configs")

    config.setup ({
      ensure_installed = {'c', 'java', 'python', 'lua', 'javascript', 'typescript', 'tsx', 'html', 'css'},
      highlight = {enable = true},
      indent = {
        enable = true,
        disable = {'javascript', 'typescript', 'tsx'}
      }
    })
  end
}
