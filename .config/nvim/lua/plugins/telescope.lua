return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
            })
          }
        }
      })
      local telescope = require('telescope.builtin')
      vim.keymap.set('n', '<C-f>', telescope.find_files, {})
      vim.keymap.set('n', '<leader>gf', telescope.live_grep, {})

      require("telescope").load_extension("ui-select")
    end
  }
}
