return {
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			workspace_text = "Working",
			editing_text = "Coding...",
		})
	end,
}
