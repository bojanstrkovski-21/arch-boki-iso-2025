local M = {}

local set_colourscheme = require("_colour.colourscheme")

M.setup = function ()
    set_colourscheme()

    vim.api.nvim_create_autocmd('ColorScheme', {
        callback = function(args)
            vim.fn.jobstart("sed -i '' -e 's/\\[\\[colorscheme .*\\]\\]/[[colorscheme " .. args.match .. "]]/' ~/.config/nvim/lua/_colour/colourscheme.lua")
            -- see bonus section for more info
            -- vim.fn.jobstart("bash -c 'source location_of_functions_file && set_alactritty_color " .. args.match .. "'")
        end
    })
end

return M

