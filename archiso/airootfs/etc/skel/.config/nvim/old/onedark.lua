 return {"navarasu/onedark.nvim",
    name = "onedark",
    priority = 1000,
    config = function()
    style = 'dark',
    vim.cmd.colorscheme "onedark"
    end
}
