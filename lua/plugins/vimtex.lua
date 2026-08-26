return {
  'lervag/vimtex',
  lazy = false,

  init = function()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_general_viewer = 'xdg-open'
    vim.g.vimtex_view_general_options = '@pdf'

    vim.g.vimtex_compiler_latexmk = {
      continuous = 1,
      executable = 'latexmk',
      options = {
        '-interaction=nonstopmode',
        '-synctex=1',
        '-file-line-error',
        -- '-auxdir=build',
        -- '-outdir=.'
      },
    }

    vim.g.vimtex_compiler_latexmk_engines = {
      _ = '-lualatex',
    }
  end,
}
