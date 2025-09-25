return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    "nvim-treesitter/nvim-treesitter",
  },
  event = "BufReadPost",
  config = function()
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        -- Priority: LSP -> Treesitter -> indent
        return { "lsp", "treesitter" }
      end,
    })
  end,
}
