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
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {"lua_ls", "luau_lsp", "tsserver", "bashls", "clangd", "cmake", "cssls", "cssmodules_ls", "emmet_ls", "emmet_language_server", "golangci_lint_ls", "gopls", "jsonls", "biome", "jdtls", "quick_lint_js", "vtsls", "jsonnet_ls", "unocss", "html", "htmx", "astro", "autotools_ls", "marksman", "prosemd_lsp", "remark_ls", "vale_ls", "zk", "jedi_language_server", "pyre", "pyright", "pylyzer", "sourcery", "pylsp", "ruff_lsp", "rust_analyzer", "lemminx", "hydra_lsp", "yamlls"}
					})
	end
},
{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.bashls.setup({})
		lspconfig.luau_lsp.setup({})
		lspconfig.clangd.setup({})
		lspconfig.cmake.setup({})
		lspconfig.cssls.setup({})
		lspconfig.cssmodules_ls.setup({})
		lspconfig.emmet_language_server.setup({})
		lspconfig.emmet_ls.setup({})
		lspconfig.golangci_lint_ls.setup({})
		lspconfig.gopls.setup({})
		lspconfig.jsonls.setup({})
		lspconfig.biome.setup({})
		lspconfig.jdtls.setup({})
		lspconfig.quick_lint_js.setup({})
		lspconfig.vtsls.setup({})
		lspconfig.jsonnet_ls.setup({})
		lspconfig.unocss.setup({})
		lspconfig.html.setup({})
		lspconfig.htmx.setup({})
		lspconfig.astro.setup({})
		lspconfig.autotools_ls.setup({})
		lspconfig.marksman.setup({})
		lspconfig.prosemd_lsp.setup({})
		lspconfig.remark_ls.setup({})
		lspconfig.vale_ls.setup({})
		lspconfig.zk.setup({})
		lspconfig.jedi_language_server.setup({})
		lspconfig.pyre.setup({})
		lspconfig.pyright.setup({})
		lspconfig.pylyzer.setup({})
		lspconfig.sourcery.setup({})
		lspconfig.pylsp.setup({})
		lspconfig.ruff_lsp.setup({})
		lspconfig.rust_analyzer.setup({})
		lspconfig.lemminx.setup({})
		lspconfig.hydra_lsp.setup({})
		lspconfig.yamlls.setup({})

		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})

	end
},
}
