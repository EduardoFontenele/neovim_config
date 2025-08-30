return {
  "stevearc/conform.nvim",
  enabled = vim.fn.has("nvim-0.10") == 1, -- Só ativa no Neovim 0.10+
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
    
    vim.keymap.set("n", "<leader>f", function()
      require("conform").format()
    end)
  end,
}
