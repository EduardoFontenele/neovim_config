return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]],
      hide_numbers = true,
      shade_terminals = true,
      direction = "float", -- ou "horizontal", "vertical", "tab"
      float_opts = {
        border = "curved",
        width = 120,
        height = 30,
      },
    })
    
    -- Atalhos extras
    vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
    vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>")
    vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
    
    -- Sair do modo terminal
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
  end,
}
