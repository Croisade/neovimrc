-- lua/jamal/lazy/treesitter.lua
return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master", -- main branch requires Neovim 0.12+ (nightly); we're on 0.11 stable
        lazy = false,
        build = ":TSUpdate",
        dependencies = {
            {
                "nvim-treesitter/nvim-treesitter-context",
                opts = {
                    enable = true,
                    multiwindow = false,
                    max_lines = 0,
                    min_window_height = 0,
                    line_numbers = true,
                    multiline_threshold = 20,
                    trim_scope = "outer",
                    mode = "cursor",
                    separator = nil,
                    zindex = 20,
                    on_attach = nil,
                },
            },
        },
        config = function()
            -- Force GCC (since you want GCC and already have it on PATH)
            vim.env.CC = "gcc"

            -- Register custom parser before setup so ensure_installed can pick it up
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.templ = {
                install_info = {
                    url = "https://github.com/vrischmann/tree-sitter-templ.git",
                    branch = "master",
                    files = { "src/parser.c", "src/scanner.c" },
                },
            }
            vim.treesitter.language.register("templ", "templ")

            require("nvim-treesitter.configs").setup({
                ensure_installed = { "vimdoc", "typescript", "lua", "json" },
                auto_install = true,
                sync_install = false,
                highlight = {
                    enable = true,
                    disable = function(lang, bufnr)
                        if lang == "html" then
                            return true
                        end

                        local name = vim.api.nvim_buf_get_name(bufnr)
                        if name ~= "" then
                            local ok, stat = pcall(vim.uv.fs_stat, name)
                            if ok and stat and stat.size and stat.size > (100 * 1024) then
                                vim.notify(
                                    "File larger than 100KB: Treesitter disabled for performance",
                                    vim.log.levels.WARN,
                                    { title = "Treesitter" }
                                )
                                return true
                            end
                        end

                        return false
                    end,
                },
                indent = {
                    enable = true,
                    disable = { "markdown" },
                },
            })
        end,
    },
}
