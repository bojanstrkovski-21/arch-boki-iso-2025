-- file: lua/plugins/colours.lua
return {

  { "EdenEast/nightfox.nvim", priority = 1000 },

  { "catppuccin/nvim", name = "catppuccin-mocha", priority = 1000 },

  { "bluz71/vim-nightfly-guicolors", priority = 1000 },
    {
    "navarasu/onedark.nvim",
    priority = 1000,
    style = "dark",
    transparent = true,
    code_style = {
      comments = "italic",
      keywords = "none",
      functions = "none",
      strings = "none",
      variables = "none",
    },
    lualine = {
      transparent = true, -- lualine center bar transparency
    },
    colors = {
      grey = "#8b8b8b",
      fg = "#bbbbbb",
      bg0 = "#2b2e37",
    },
    highlights = {
      TreesitterContext = { fg = "$fg", bg = "$bg2" },
      CursorLine = { bg = "#2b3137" },
    },
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
  dir = "~/.config/nvim/lua/_colour",
  lazy = false,
  priority = 900,
  init = function()
  require("_colour").setup()
  end,
},
{ 
  'jdpedersen1/poimandres.nvim',
  --'olivercederborg/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }
  end,
},
}
