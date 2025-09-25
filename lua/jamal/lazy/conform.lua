return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function ()
         require("conform").setup({
            format_on_save = {
                timeout_ms = 1000,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                typescript = { "prettier", "eslint_d" },
                typescriptreact = { "prettier", "eslint_d" },
                javascript = { "prettier", "eslint_d" },
                javascriptreact = { "prettier", "eslint_d" },
                json = { "prettier" },
                markdown = { "prettier" },
            },
        })
    end

}
