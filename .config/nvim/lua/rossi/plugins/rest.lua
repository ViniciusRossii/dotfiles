return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			table.insert(opts.ensure_installed, "http")
		end,
	},
	config = function()
		vim.keymap.set("n", "<leader>RR", "<cmd>Rest run<CR>", { desc = "Run request." })
		vim.keymap.set("n", "<leader>Rs", "<cmd>Rest env select<CR>", { desc = "Select env file." })
	end,
}
