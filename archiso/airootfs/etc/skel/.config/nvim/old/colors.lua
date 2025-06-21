-- file: lua/plugins/colours.lua
return {

  { "EdenEast/nightfox.nvim", priority = 1000 },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  { "bluz71/vim-nightfly-guicolors", priority = 1000 },
    {
    "navarasu/onedark.nvim",

    config = function()
    require('onedark').setup  {
      style = "dark",
      transparent = false,
      code_style = {
      comments = "italic",
      keywords = "none",
      functions = "none",
      strings = "none",
      variables = "none",}
    }
    end
  },
  {
    "dracula/vim",
  },
  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  },

  {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000;
  },

  {
  "luisiacc/gruvbox-baby",
  branch= "main",
  lazy = false,
  priority = 1000;
  },

  {
  "ellisonleao/gruvbox.nvim",
  priority = 1000 ,
  config = true,
  opts = {}
  },

  {
    "wuelnerdotexe/vim-enfocado",
    config = function()
      --vim.cmd([[let g:enfocado_style = 'neon']])
      vim.cmd([[let g:enfocado_style = 'nature']])
      vim.cmd([[set t_Co=256]])

    end
  },
  {
      "neanias/everforest-nvim",
      version = false,
      lazy = false,
      priority = 1000, -- make sure to load this before all the other start plugins
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
        local everforest = require("everforest")
          everforest.setup({
            background = "medium",
            transparent_background_level = 0,
            italics = true,
            disable_italic_comments = false,
            on_highlights = function(hl, _)
            hl["@string.special.symbol.ruby"] = { link = "@field" }
          end,
          })
      end,
  },

  {
    "lunarvim/horizon.nvim",
  },

  --[[  {
    "RRethy/nvim-base16",
  },]]



{"arcticicestudio/nord-vim",},
{"lunarvim/synthwave84.nvim",},
{"LunarVim/primer.nvim"},
{
    'NTBBloodbath/doom-one.nvim',
    setup = function()
        -- Add color to cursor
        vim.g.doom_one_cursor_coloring = false
        -- Set :terminal colors
        vim.g.doom_one_terminal_colors = true
        -- Enable italic comments
        vim.g.doom_one_italic_comments = false
        -- Enable TS support
        vim.g.doom_one_enable_treesitter = true
        -- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
        -- Enable transparent background
        vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
        vim.g.doom_one_pumblend_enable = false
        vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
        vim.g.doom_one_plugin_neorg = true
        vim.g.doom_one_plugin_barbar = false
        vim.g.doom_one_plugin_telescope = false
        vim.g.doom_one_plugin_neogit = true
        vim.g.doom_one_plugin_nvim_tree = true
        vim.g.doom_one_plugin_dashboard = true
        vim.g.doom_one_plugin_startify = true
        vim.g.doom_one_plugin_whichkey = true
        vim.g.doom_one_plugin_indent_blankline = true
        vim.g.doom_one_plugin_vim_illuminate = true
        vim.g.doom_one_plugin_lspsaga = false
    end,
},

  {
    "rebelot/kanagawa.nvim",
    config = function()
    require('kanagawa').setup({
       compile = false,             -- enable compiling the color..scheme
       undercurl = true,            -- enable undercurls
       commentStyle = { italic = true },
       keywordStyle = { italic = true},
       statementStyle = { bold = true },
       transparent = false,         -- do not set background color
       dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
       background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
    })
    --vim.cmd [[colorscheme ]]
    end
  },
  {
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				-- optional configuration here
				-- transparent = true,
				style = {
					-- "none" is the same thing as default. But "italic" and "bold" are also valid options
					boolean = "none",
					number = "none",
					float = "none",
					error = "none",
					comments = "none",
					conditionals = "none",
					functions = "none",
					headings = "bold",
					operators = "none",
					strings = "none",
					variables = "none",

					-- keywords
					keywords = "none",
					keyword_return = "none",
					keywords_loop = "none",
					keywords_label = "none",
					keywords_exception = "none",

					-- builtin
					builtin_constants = "none",
					builtin_functions = "none",
					builtin_types = "none",
					builtin_variables = "none",
				},
				colors = {
					 func = "#bc96b0",
					 keyword = "#787bab",
					 -- string = "#d4bd98",
					 string = "#8a739a",
					 -- string = "#f2e6ff",
					 -- number = "#f2e6ff",
					 -- string = "#d8d5b1",
					 number = "#8f729e",
					 -- type = "#dcaed7",
				},
			})
		end,
	},
  {
		"jnurmine/Zenburn",
	},
  {
		"blazkowolf/gruber-darker.nvim",
		opts = {
			bold = false,
		},
	},
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		italic = false,
	},
  {
		"Skardyy/makurai-nvim",
	},
  {
		"oahlen/iceberg.nvim",
	},
  {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("black-metal").setup({
      -- optional configuration here
      alt_bg = true,
      colors = {
          yellow = "#d3c6aa"
      },
    })
    require("black-metal").load()
  end,
  },
  {
    dir = "~/.config/nvim/lua/_colour",
    lazy = false,
    priority = 900,
    init = function()
      require("_colour").setup()
    end,
  },

}
