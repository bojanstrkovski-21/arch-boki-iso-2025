vim.g.mapleader = " "
-- open alpha-nvim config(plugin-file)
vim.keymap.set("n", "<leader>aa", ":Alpha<CR>", {})

-- toggle colorschemes switcher
--vim.api.nvim_set_keymap('n', '<leader>cs', [[<Cmd>lua require('_switcher.switcher').find_colors()<CR>]], { noremap = true, silent = true })