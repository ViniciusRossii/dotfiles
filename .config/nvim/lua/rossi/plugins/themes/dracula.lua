return {
	"Mofiqul/dracula.nvim",
	enabled = false,
	config = function()
		require("dracula").setup({
			transparent_bg = true,
		})
		vim.cmd("colorscheme dracula")
	end,
}
