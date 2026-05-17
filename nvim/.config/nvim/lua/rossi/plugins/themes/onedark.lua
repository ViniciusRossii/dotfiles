return {
	"navarasu/onedark.nvim",
	enabled = false,
	config = function()
		require("onedark").setup({
			style = "cool",
			transparent = true,
		})

		require("onedark").load()
	end,
}
