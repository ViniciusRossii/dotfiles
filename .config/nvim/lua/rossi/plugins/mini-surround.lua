return {
	"nvim-mini/mini.surround",
	version = false,
	config = function()
		require("mini.surround").setup({
			silent = true,
		})
	end,
}
