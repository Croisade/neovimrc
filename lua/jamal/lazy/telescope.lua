return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require('telescope').setup({
        defaults = {
            file_ignore_patterns = {
                "node_modules",
                "dist",
                "coverage"
        }}})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
            local cwd = vim.fn.getcwd()

            if git_root ~= nil and git_root ~= '' then
                cwd = git_root
            end

            builtin.live_grep({
                cwd = cwd
            })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
