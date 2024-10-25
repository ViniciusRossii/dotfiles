return {
	"ggandor/leap.nvim",
	dependences = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").create_default_mappings()
	end,
}
