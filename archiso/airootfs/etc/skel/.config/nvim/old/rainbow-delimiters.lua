return   {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = true,
    prioryty = 1000,
    event = { "BufReadPre", "BufNewFile" },
--     init = function()
--       local rainbow_delimiters = require("rainbow-delimiters")
--     
--       vim.g.rainbow_delimiters = {
--         strategy = {
--           [""] = rainbow_delimiters.strategy["global"],
--           vim = rainbow_delimiters.strategy["local"],
--         },
--         query = {
--           [""] = "rainbow-delimiters",
--           -- lua = "rainbow-blocks",
--           tsx = "rainbow-parens",
--           html = "rainbow-parens",
--           javascript = "rainbow-delimiters-react",
--         },
--         highlight = {
--           "RainbowDelimiterRed",
--           "RainbowDelimiterYellow",
--           "RainbowDelimiterBlue",
--           "RainbowDelimiterOrange",
--           "RainbowDelimiterGreen",
--           "RainbowDelimiterViolet",
--           "RainbowDelimiterCyan",
--         },
--       }
--     end,
  }
