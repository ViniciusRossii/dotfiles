return {
	"ggandor/leap.nvim",
  enabled = false,
	dependences = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").create_default_mappings()
	end,
}
