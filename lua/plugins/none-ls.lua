return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
			},
		})

		vim.keymap.set("n", "<Leader>fd", vim.lsp.buf.format, {})
	end,
}
