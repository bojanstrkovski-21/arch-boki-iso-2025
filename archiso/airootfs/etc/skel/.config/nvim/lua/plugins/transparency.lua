return {
	"xiyaowong/transparent.nvim",
		config = function()
		local nvim_transp = require("transparent")
		nvim_transp.setup({
		groups = { -- table: default groups
    		'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    		'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    		'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    		'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    		'EndOfBuffer',
  		},
  		extra_groups = {}, -- table: additional groups that should be cleared
  		exclude_groups = {}, -- table: groups you don't want to clear
		
		})
	end
}
