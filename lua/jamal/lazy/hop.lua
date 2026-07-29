return {
    'smoka7/hop.nvim',
    version = "*",
    config = function()
        require('hop').setup({
            keys = 'etovxqpdygfblzhckisuran'
        })

        local hop = require('hop')
        local direction = require('hop.hint').HintDirection
        local position = require('hop.hint').HintPosition

        vim.keymap.set('n', '<leader>hf', function()
            hop.hint_words({ direction = direction.AFTER_CURSOR, hint_position = position.BEGIN })
        end)
        vim.keymap.set('n', '<leader>hF', function()
            hop.hint_words({ direction = direction.AFTER_CURSOR, hint_position = position.END })
        end)
        vim.keymap.set('n', '<leader>hb', function()
            hop.hint_words({ direction = direction.BEFORE_CURSOR, hint_position = position.BEGIN })
        end)
        vim.keymap.set('n', '<leader>hB', function()
            hop.hint_words({ direction = direction.BEFORE_CURSOR, hint_position = position.END })
        end)
    end
}
