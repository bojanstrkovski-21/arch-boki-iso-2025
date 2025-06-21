return {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
  ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "rasi", "rust", "toml", "javascript", "json", "latex", "fish", "html", "css", "markdown", "bash", "astro", "yaml", "markdown_inline", "python", },
  highlight = {enable = true},
  indent = {enable = true},
  })
end
}
