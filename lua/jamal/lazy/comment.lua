return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
        -- optional keymap if you want to map Control + / like in many editors
        vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
        vim.keymap.set("v", "<C-/>", "gc", { remap = true })
    end,
}
