local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		rust = { "rustfmt", lsp_format = "fallback" },
		c = { "clang-format" },
	},
})
vim.keymap.set("n", "<leader>f", conform.format({ async = true }))
