return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{ "mason-org/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"cssls",
					"eslint",
					"html",
					"tailwindcss",
					"biome",
				},
			})
		end,
	},
}
