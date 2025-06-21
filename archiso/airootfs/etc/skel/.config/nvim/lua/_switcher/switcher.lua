local M = {}

function M.find_colors()

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local sorters = require("telescope.sorters")
local themes = require("telescope.themes")

function next_color(prompt_bufnr)
  actions.move_selection_next(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.cmd(cmd)
end

function prev_color(prompt_bufnr)
  actions.move_selection_previous(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.cmd(cmd)
end

function enter(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.cmd(cmd)

local init = vim.fn.expand("/home/bojanstrko/.config/nvim/lua/plugins/colors.lua")
local job_cmd = "sed -i '' '$d' " .. init .. " && echo '".. cmd .. "' >> " .. init
vim.fn.jobstart(job_cmd)

  actions.close(prompt_bufnr)
end


local dropdown = themes.get_dropdown()

local colors = vim.fn.getcompletion("", "color")

local opts = {
  finder = finders.new_table(colors),
  --finder = finders.new_table { "dracula", "gruvbox", "gruvbox-baby", "gruvbox-material", "deus", "tokyonight", "onedark", "blue"},
  sorter = sorters.get_generic_fuzzy_sorter({}),

  attach_mappings = function(prompt_bufnr, map)
    map("i", "<CR>", enter)
    map("i", "<C-j>", next_color)
    map("i", "<C-k>", prev_color)

    map("n", "<CR>", enter)
    map("n", "<C-j>", next_color)
    map("n", "<C-k>", prev_color)
    return true
  end,
}

local colors = pickers.new(dropdown, opts)

colors:find()

end

return M



