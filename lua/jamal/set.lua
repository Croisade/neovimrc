vim.env.CC = "cl"
vim.opt.guicursor = "n-v-c:block,i:ver25,r-cr:hor20,o:hor50"

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("USERPROFILE") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = ""

-- Treesitter folding
vim.opt.foldcolumn = "1" -- Show fold column (good UI)
vim.opt.foldlevel = 99 -- Open most folds
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true -- Enable folds
