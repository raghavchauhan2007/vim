return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},

  config = function ()
    require('tokyonight').setup({
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
        comments = { italic = true },
        keywords = { italic = true }
      }
    })

    vim.cmd.colorscheme('tokyonight')
  end
}
