return {
	"zootedb0t/citruszest.nvim",
	lazy = false,
	priority = 1000,
	enabled = false,
	config = function()
		require("citruszest").setup({
			option = {
				transparent = true,
			},
		})
		vim.cmd("colorscheme citruszest")
	end,
}
