return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
  keys = {
    { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon Add" },
    { "<leader>h", function()
      local harpoon = require("harpoon")
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, desc = "Harpoon Menu" },
    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon File 1" },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon File 2" },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon File 3" },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon File 4" },
  },
}
