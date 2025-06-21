return {
  "nvim-telescope/telescope.nvim",
  branch = "master", -- using master to fix issues with deprecated to definition warnings 
    -- '0.1.x' for stable ver.
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "andrew-george/telescope-themes",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.load_extension("fzf")
    telescope.load_extension("themes")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
      extensions = {
        themes = {
          enable_previewer = true,
          enable_live_preview = true,
          persist = {
            enabled = true,
            path = vim.fn.stdpath("config") .. "/lua/colors-2025.lua",
          },
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>pWs", function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end, { desc = "Find Connected Words under cursor" })

    vim.keymap.set("n", "<leader>vb", "<cmd>Telescope themes<CR>", { noremap = false, silent = true, desc = "Theme Switcher" })
    end,
}


-- return {
--    {
--       'nvim-telescope/telescope.nvim', tag = '0.1.5',
--        dependencies = { 'nvim-lua/plenary.nvim' },
--        config = function()
--        local builtin = require("telescope.builtin")
--
--        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--        vim.keymap.set('n', '<leader>fg', builtin.live_grep,{})
--        end
--     },
--     {
--        "nvim-telescope/telescope-ui-select.nvim",
--         config = function()
--         require("telescope").setup ({
--           extensions = {
--             ["ui-select"] = {
--               require("telescope.themes").get_dropdown {
--               }
--             }
--           }
--         })
--         require("telescope").load_extension("ui-select")
--         end
--     },
--    }