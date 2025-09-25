-- ~/.config/nvim/colors/best_theme.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "jamal_theme"

local set = vim.api.nvim_set_hl

-- Base UI
set(0, "Normal", { fg = "#cccccc", bg = "#141a1f" })
set(0, "CursorLine", { bg = "#273541" })
set(0, "CursorLineNr", { fg = "#5599dd", bold = true })
set(0, "LineNr", { fg = "#667799", bg = "#141a1f" })
set(0, "Visual", { bg = "#5599dd" })
set(0, "VertSplit", { fg = "#273541" })
set(0, "StatusLine", { fg = "#cccccc", bg = "#0d1114" })
set(0, "StatusLineNC", { fg = "#cccccc", bg = "#0d1114" })
set(0, "TabLine", { fg = "#cccccc", bg = "#151c21" })
set(0, "TabLineSel", { fg = "#cccccc", bg = "#101519", bold = true })
set(0, "TabLineFill", { bg = "#151c21" })
set(0, "Pmenu", { fg = "#cccccc", bg = "#0d1114" })
set(0, "PmenuSel", { fg = "#cccccc", bg = "#141a1f" })
set(0, "PmenuThumb", { bg = "#273541" })
set(0, "PmenuSbar", { bg = "#273541" })

-- Syntax
set(0, "Comment", { fg = "#5974a5", italic = true })
set(0, "String", { fg = "#95d16a" })
set(0, "Constant", { fg = "#e09956" })
set(0, "Number", { fg = "#e09956" })
set(0, "Boolean", { fg = "#e09956" })
set(0, "Identifier", { fg = "#ed5e6a" })
set(0, "Function", { fg = "#54b0fc" })
set(0, "Statement", { fg = "#cc6be9" })
set(0, "Keyword", { fg = "#cc6be9" })
set(0, "Conditional", { fg = "#cc6be9" })
set(0, "Repeat", { fg = "#cc6be9" })
set(0, "Operator", { fg = "#9faeca" })
set(0, "PreProc", { fg = "#cc6be9" })
set(0, "Type", { fg = "#f0c36f" })
set(0, "Special", { fg = "#45c2d3" })
set(0, "Delimiter", { fg = "#9faeca" })
set(0, "Underlined", { fg = "#54b0fc", underline = true })
set(0, "Todo", { fg = "#e09956", bold = true })

-- Treesitter
set(0, "@comment", { fg = "#5974a5", italic = true })
set(0, "@string", { fg = "#95d16a" })
set(0, "@constant", { fg = "#e09956" })
set(0, "@number", { fg = "#e09956" })
set(0, "@boolean", { fg = "#e09956" })
set(0, "@variable", { fg = "#ed5e6a" })
set(0, "@variable.parameter", { fg = "#9faeca" })
set(0, "@variable.builtin", { fg = "#e09956" })
set(0, "@function", { fg = "#54b0fc" })
set(0, "@function.call", { fg = "#54b0fc" })
set(0, "@type", { fg = "#f0c36f" })
set(0, "@keyword", { fg = "#cc6be9" })
set(0, "@keyword.operator", { fg = "#9faeca" })
set(0, "@operator", { fg = "#9faeca" })
set(0, "@property", { fg = "#e09956" })
set(0, "@punctuation", { fg = "#9faeca" })
set(0, "@tag", { fg = "#ed5e6a" })
set(0, "@tag.attribute", { fg = "#e09956" })
set(0, "@tag.delimiter", { fg = "#9faeca" })
set(0, "@namespace", { fg = "#9faeca" })
set(0, "@field", { fg = "#e09956" })
set(0, "@constructor", { fg = "#54b0fc" })
set(0, "@method", { fg = "#54b0fc" })
set(0, "@parameter", { fg = "#9faeca" })
set(0, "@lsp.type.class", { fg = "#f0c36f" })
set(0, "@lsp.type.interface", { fg = "#f0c36f" })
set(0, "@lsp.type.enum", { fg = "#f0c36f" })
set(0, "@lsp.type.struct", { fg = "#f0c36f" })
set(0, "@lsp.type.function", { fg = "#54b0fc" })
set(0, "@lsp.type.method", { fg = "#54b0fc" })
set(0, "@lsp.type.variable", { fg = "#ed5e6a" })
set(0, "@lsp.type.property", { fg = "#e09956" })

-- Diagnostics
set(0, "DiagnosticError", { fg = "#ff4433" })
set(0, "DiagnosticWarn", { fg = "#ff9955" })
set(0, "DiagnosticInfo", { fg = "#5599dd" })
set(0, "DiagnosticHint", { fg = "#5599dd" })
set(0, "DiagnosticUnderlineError", { underline = true, sp = "#ff4433" })
set(0, "DiagnosticUnderlineWarn", { underline = true, sp = "#ff9955" })
set(0, "DiagnosticUnderlineInfo", { underline = true, sp = "#5599dd" })
set(0, "DiagnosticUnderlineHint", { underline = true, sp = "#5599dd" })

-- GitSigns (if using gitsigns.nvim)
set(0, "GitSignsAdd", { fg = "#00aa55" })
set(0, "GitSignsChange", { fg = "#ff9955" })
set(0, "GitSignsDelete", { fg = "#ff4433" })

-- LSP (references)
set(0, "LspReferenceText", { bg = "#273541" })
set(0, "LspReferenceRead", { bg = "#273541" })
set(0, "LspReferenceWrite", { bg = "#273541" })

-- MatchParen
set(0, "MatchParen", { fg = "#54b0fc", bg = "#273541", bold = true })

-- Search
set(0, "Search", { bg = "#5599dd", fg = "#ffffff" })
set(0, "IncSearch", { bg = "#ff9955", fg = "#111111" })

-- Fold
set(0, "Folded", { fg = "#cccccc", bg = "#273541" })
set(0, "FoldColumn", { fg = "#cccccc", bg = "#141a1f" })

-- Whitespace / Indent guides
set(0, "Whitespace", { fg = "#667799" })
set(0, "IndentBlanklineChar", { fg = "#273541" })
set(0, "IndentBlanklineContextChar", { fg = "#5599dd" })

-- Cursor
set(0, "Cursor", { fg = "#5599dd", bg = "#5599dd" })

-- SignColumn
set(0, "SignColumn", { fg = "#cccccc", bg = "#141a1f" })

-- EndOfBuffer
set(0, "EndOfBuffer", { fg = "#141a1f" })

-- Optional: Telescope (if using Telescope)
set(0, "TelescopeNormal", { fg = "#cccccc", bg = "#0d1114" })
set(0, "TelescopeBorder", { fg = "#273541", bg = "#0d1114" })
set(0, "TelescopePromptNormal", { fg = "#cccccc", bg = "#101519" })
set(0, "TelescopePromptBorder", { fg = "#273541", bg = "#101519" })
set(0, "TelescopePromptTitle", { fg = "#5599dd", bg = "#101519" })
set(0, "TelescopePreviewTitle", { fg = "#5599dd", bg = "#0d1114" })
set(0, "TelescopeSelection", { bg = "#273541" })
