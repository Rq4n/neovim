return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local b = null_ls.builtins

		null_ls.setup({
			sources = {
				b.formatting.stylua,

				b.diagnostics.golangci_lint,
				b.formatting.goimports,

				b.formatting.black,

				b.formatting.prettier,
			},
		})

		vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Format buffer" })
	end,
}
