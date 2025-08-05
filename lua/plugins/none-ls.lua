return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- javascripto
				-- null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,`

				-- golang
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.goimports,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
