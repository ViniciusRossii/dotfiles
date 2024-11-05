return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			defaults = {
				mappings = {
					i = {
						["<C-d>"] = require("telescope.actions").delete_buffer,
					},
					n = {
						["<C-d>"] = require("telescope.actions").delete_buffer,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Open file search" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Opened buffers" })
		-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set("n", "<leader>fg", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "Open word search" })
	end,
}
