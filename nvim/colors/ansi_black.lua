-- ansi_black.nvim
-- Custom ANSI palette with a pure black background.

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "ansi_black"

local c = {
	black = "#000000",
	red = "#bb0000",
	green = "#00bb00",
	yellow = "#bbbb00",
	blue = "#0d0dc8",
	magenta = "#bb00bb",
	cyan = "#00bbbb",
	white = "#bbbbbb",

	bright_black = "#555555",
	bright_red = "#ff5555",
	bright_green = "#55ff55",
	bright_yellow = "#ffff55",
	bright_blue = "#5555ff",
	bright_magenta = "#ff55ff",
	bright_cyan = "#55ffff",
	bright_white = "#ffffff",

	bg = "#000000",
	fg = "#bbbbbb",
	cursor = "#bbbbbb",
	cursor_text = "#ffffff",
	selection = "#b5d5ff",
}

-- Terminal ANSI palette
for i, color in ipairs({
	c.black,
	c.red,
	c.green,
	c.yellow,
	c.blue,
	c.magenta,
	c.cyan,
	c.white,
	c.bright_black,
	c.bright_red,
	c.bright_green,
	c.bright_yellow,
	c.bright_blue,
	c.bright_magenta,
	c.bright_cyan,
	c.bright_white,
}) do
	vim.g["terminal_color_" .. (i - 1)] = color
end

local hl = vim.api.nvim_set_hl

local function set(group, opts)
	hl(0, group, opts)
end

-- Editor
set("Normal", { fg = c.fg, bg = c.bg })
set("NormalFloat", { fg = c.fg, bg = c.bg })
set("NormalNC", { fg = c.fg, bg = c.bg })
set("EndOfBuffer", { fg = c.bright_black, bg = c.bg })
set("SignColumn", { fg = c.fg, bg = c.bg })
set("Folded", { fg = c.bright_black, bg = c.bg })
set("LineNr", { fg = c.bright_black, bg = c.bg })
set("CursorLineNr", { fg = c.bright_yellow, bg = c.bg, bold = true })
set("CursorLine", { bg = "#111111" })
set("ColorColumn", { bg = "#111111" })
set("VertSplit", { fg = c.bright_black, bg = c.bg })
set("WinSeparator", { fg = c.bright_black, bg = c.bg })

-- Cursor and selection
set("Cursor", { fg = c.cursor_text, bg = c.cursor })
set("lCursor", { fg = c.cursor_text, bg = c.cursor })
set("TermCursor", { fg = c.cursor_text, bg = c.cursor })
set("Visual", { fg = c.black, bg = c.selection })
set("VisualNOS", { fg = c.black, bg = c.selection })
set("Search", { fg = c.black, bg = c.bright_yellow })
set("IncSearch", { fg = c.black, bg = c.bright_red })
set("CurSearch", { fg = c.black, bg = c.bright_yellow })
set("MatchParen", { fg = c.bright_yellow, bold = true, underline = true })

-- Status and menus
set("StatusLine", { fg = c.bright_white, bg = "#222222" })
set("StatusLineNC", { fg = c.bright_black, bg = "#111111" })
set("TabLine", { fg = c.fg, bg = "#111111" })
set("TabLineFill", { fg = c.fg, bg = c.bg })
set("TabLineSel", { fg = c.black, bg = c.bright_white, bold = true })
set("Pmenu", { fg = c.fg, bg = "#222222" })
set("PmenuSel", { fg = c.black, bg = c.selection })
set("PmenuSbar", { bg = "#333333" })
set("PmenuThumb", { bg = c.bright_black })
set("WildMenu", { fg = c.black, bg = c.bright_cyan })
set("Title", { fg = c.bright_cyan, bold = true })
set("Directory", { fg = c.bright_blue })
set("Question", { fg = c.bright_green })
set("MoreMsg", { fg = c.bright_green })
set("ModeMsg", { fg = c.bright_yellow })
set("WarningMsg", { fg = c.bright_yellow })
set("ErrorMsg", { fg = c.bright_red, bold = true })
set("NonText", { fg = c.bright_black })
set("Whitespace", { fg = c.bright_black })
set("SpecialKey", { fg = c.bright_black })

-- Syntax
set("Comment", { fg = c.bright_black, italic = true })
set("Constant", { fg = c.bright_cyan })
set("String", { fg = c.green })
set("Character", { fg = c.green })
set("Number", { fg = c.bright_magenta })
set("Boolean", { fg = c.bright_magenta })
set("Float", { fg = c.bright_magenta })
set("Identifier", { fg = c.bright_cyan })
set("Function", { fg = c.bright_blue })
set("Statement", { fg = c.red })
set("Conditional", { fg = c.red })
set("Repeat", { fg = c.red })
set("Label", { fg = c.white })
set("Operator", { fg = c.fg })
set("Keyword", { fg = c.magenta })
set("Exception", { fg = c.bright_red })
set("PreProc", { fg = c.magenta })
set("Include", { fg = c.magenta })
set("Define", { fg = c.magenta })
set("Macro", { fg = c.bright_magenta })
set("Type", { fg = c.yellow })
set("StorageClass", { fg = c.yellow })
set("Structure", { fg = c.yellow })
set("Typedef", { fg = c.yellow })
set("Special", { fg = c.bright_yellow })
set("SpecialChar", { fg = c.bright_yellow })
set("Delimiter", { fg = c.fg })
set("Underlined", { fg = c.bright_blue, underline = true })
set("Ignore", { fg = c.bright_black })
set("Error", { fg = c.bright_white, bg = c.red, bold = true })
set("Todo", { fg = c.black, bg = c.bright_yellow, bold = true })

-- Diagnostics
set("DiagnosticError", { fg = c.bright_red })
set("DiagnosticWarn", { fg = c.bright_yellow })
set("DiagnosticInfo", { fg = c.bright_cyan })
set("DiagnosticHint", { fg = c.bright_green })
set("DiagnosticOk", { fg = c.bright_green })
set("DiagnosticUnderlineError", { undercurl = true, sp = c.bright_red })
set("DiagnosticUnderlineWarn", { undercurl = true, sp = c.bright_yellow })
set("DiagnosticUnderlineInfo", { undercurl = true, sp = c.bright_cyan })
set("DiagnosticUnderlineHint", { undercurl = true, sp = c.bright_green })

-- Diff
set("DiffAdd", { fg = c.bright_green, bg = "#001800" })
set("DiffChange", { fg = c.bright_yellow, bg = "#181800" })
set("DiffDelete", { fg = c.bright_red, bg = "#180000" })
set("DiffText", { fg = c.bright_white, bg = "#303000", bold = true })

-- Git signs
set("Added", { fg = c.bright_green })
set("Changed", { fg = c.bright_yellow })
set("Removed", { fg = c.bright_red })

-- Common Treesitter groups
set("@comment", { link = "Comment" })
set("@string", { link = "String" })
set("@string.escape", { fg = c.bright_yellow })
set("@number", { link = "Number" })
set("@boolean", { link = "Boolean" })
set("@function", { link = "Function" })
set("@function.call", { fg = c.bright_blue })
set("@method", { fg = c.bright_blue })
set("@keyword", { link = "Keyword" })
set("@operator", { link = "Operator" })
set("@type", { link = "Type" })
set("@variable", { fg = c.fg })
set("@variable.builtin", { fg = c.bright_cyan })
set("@property", { fg = c.cyan })
set("@constant", { link = "Constant" })
set("@punctuation", { fg = c.fg })
set("@tag", { fg = c.red })
set("@attribute", { fg = c.bright_red })
set("@lsp.type.annotation", { link = "@attribute" })
set("@keyword.modifier", { link = "Keyword" })
set("@keyword.type", { link = "Keyword" })
set("@lsp.type.modifier", { link = "Keyword" })
set("@lsp.type.keyword", { link = "Keyword" })
set("@type", { fg = c.yellow })
set("@lsp.type.class", { link = "@type" })
