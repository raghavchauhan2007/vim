return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',

    config = function()

        local config = require("nvim-treesitter.configs")

        config.setup ({
            ensure_installed = {"c", "java", "python", "latex", "lua"},
            highlight = {enable = true},
            indent = {enable = true}
        })
    end
}
