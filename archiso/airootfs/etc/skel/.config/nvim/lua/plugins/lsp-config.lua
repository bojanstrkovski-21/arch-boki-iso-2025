return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		--opts = {
		--auto_install = true,
		--},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"cmake",
					"cssls",
					"cssmodules_ls",
					"emmet_ls",
					"emmet_language_server",
					"golangci_lint_ls",
					"gopls",
          "ltex",
					"jsonls",
					"biome",
					"jdtls",
					"quick_lint_js",
					"vtsls",
					"jsonnet_ls",
					"unocss",
					"html",
					"htmx",
					"autotools_ls",
					"marksman",
					"prosemd_lsp",
					"remark_ls",
					"vale_ls",
					"zk",
					"pyright",
					"rust_analyzer",
					"hydra_lsp",
					"yamlls",
				},
			})
		end,
	},
	{ "folke/neodev.nvim" },
	{ "j-hui/fidget.nvim", tag = "legacy" },
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.html.setup({
				capabilites = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.bashls.setup({
				capabilites = capabilities,
			})
			lspconfig.clangd.setup({
				capabilites = capabilities,
			})
			lspconfig.cmake.setup({
				capabilites = capabilities,
			})
			lspconfig.cssls.setup({
				capabilites = capabilities,
			})
			lspconfig.ltex.setup({
				capabilites = capabilities,
			})
			lspconfig.cssmodules_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.emmet_language_server.setup({
				capabilites = capabilities,
			})
			lspconfig.emmet_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.golangci_lint_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.gopls.setup({
				capabilites = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilites = capabilities,
			})
			lspconfig.biome.setup({
				capabilites = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilites = capabilities,
			})
      		lspconfig.quick_lint_js.setup({
				capabilites = capabilities,
			})
			lspconfig.vtsls.setup({
				capabilites = capabilities,
			})
			lspconfig.jsonnet_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.unocss.setup({
				capabilites = capabilities,
			})
			lspconfig.htmx.setup({
				capabilites = capabilities,
			})
			lspconfig.autotools_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.marksman.setup({
				capabilites = capabilities,
			})
			lspconfig.prosemd_lsp.setup({
				capabilites = capabilities,
			})
			lspconfig.remark_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.vale_ls.setup({
				capabilites = capabilities,
			})
			lspconfig.zk.setup({
				capabilites = capabilities,
			})
			lspconfig.pyright.setup({
				capabilites = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilites = capabilities,
			})
			lspconfig.hydra_lsp.setup({
				capabilites = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilites = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			local mason_tool_installer = require("mason-tool-installer")
			mason_tool_installer.setup({
				ensure_installed = {
					"prettier", -- prettier formatter
					"stylua", -- lua formatter
					"isort", -- python formatter
					"black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
          "luacheck", --lua linter
					"biome", --linter
					"quick-lint-js", --js linter
				},
			})
		end,
	},

}
