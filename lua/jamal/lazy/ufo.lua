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
                -- Special/scratch buffers (e.g. harpoon's quick-menu popup, nofile,
                -- prompt, etc.) have no real content to fold and no LSP/TS parser
                -- attached; ufo's own providers throw UfoFallbackException here with
                -- no further fallback, surfacing as an unhandled promise rejection.
                -- Let vim's default folding handle these instead.
                if buftype ~= "" then
                    return ""
                end
                if filetype == "html" then
                    return { "indent" } -- skip TS for some filetypes if you want
                end
                -- Only offer treesitter as the fallback if a parser is actually
                -- available for this buffer (e.g. gitcommit has none). Otherwise
                -- ufo's treesitter provider itself throws UfoFallbackException with
                -- nothing left to catch it, surfacing as an unhandled rejection.
                if not pcall(vim.treesitter.get_parser, bufnr) then
                    return { "lsp", "indent" }
                end
                -- Priority: LSP -> Treesitter -> indent
                return { "lsp", "treesitter" }
            end,
        })
    end,
}
