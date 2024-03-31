return {
  "christoomey/vim-tmux-navigator",
  config = function()
    vim.cmd("nmap <C-Left> :TmuxNavigateLeft<CR>")
    vim.cmd("nmap <C-Right> :TmuxNavigateRight<CR>")
    vim.cmd("nmap <C-Up> :TmuxNavigateUp<CR>")
    vim.cmd("nmap <C-Down> :TmuxNavigateDown<CR>")
  end
}
