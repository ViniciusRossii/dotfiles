return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp_zero = require("lsp-zero")

			-- lsp_attach is where you enable features that only work
			-- if there is a language server active in the file
			local lsp_attach = function(client, bufnr)
				local opts = { buffer = bufnr }

				vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
				vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
				vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
				vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
				vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
				vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
				vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
				vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
				vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
				vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
			end

			lsp_zero.extend_lspconfig({
				sign_text = true,
				lsp_attach = lsp_attach,
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
			})

			local mason_registry = require("mason-registry")

			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"cssls",
					"eslint",
					"html",
					"tailwindcss",
					"emmet_ls",
				},
			})

			require("lspconfig").ts_ls.setup({
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
				require("lspconfig").emmet_ls.setup({
					capabilities = capabilities,
					filetypes = {
						"css",
						"eruby",
						"html",
						-- "javascript",
						-- "javascriptreact",
						"less",
						"sass",
						-- "typescript",
						"scss",
						"svelte",
						"pug",
						-- "typescriptreact",
						"vue",
					},
					init_options = {
						html = {
							options = {
								["bem.enabled"] = true,
							},
						},
					},
				}),
			})
			require("lspconfig").cssls.setup({})
			require("lspconfig").eslint.setup({})
			require("lspconfig").html.setup({})
			require("lspconfig").tailwindcss.setup({})
			require("lspconfig").gopls.setup({})

			local cmp = require("cmp")

			cmp.setup({
				sources = {
					{ name = "nvim_lsp" },
				},
				snippet = {
					expand = function(args)
						-- You need Neovim v0.10 to use vim.snippet
						vim.snippet.expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
			})
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
}
