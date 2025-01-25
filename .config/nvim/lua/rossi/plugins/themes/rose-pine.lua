return {
	"rose-pine/neovim",
	name = "rose-pine",
  enabled = false,
	config = function()
		require("rose-pine").setup({
			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},
		})

		vim.cmd("colorscheme rose-pine")
	end,
}
