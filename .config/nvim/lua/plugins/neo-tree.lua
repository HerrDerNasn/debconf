return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
      require("neo-tree").setup({
        filesystem = {
          hijack_netrw_behavior = "open_default"
        }
      })
    end
  }
