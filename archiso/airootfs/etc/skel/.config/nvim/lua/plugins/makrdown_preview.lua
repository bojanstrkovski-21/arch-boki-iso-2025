--[[return {
  { "dhruvasagar/vim-table-mode", ft = { "markdown" } },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "Avante", "copilot-chat", "codecompanion" },
    opts = {
      render_modes = true,
      file_types = { "markdown", "Avante", "copilot-chat", "codecompanion" },
      sign = {
        enabled = false,
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
}
}
]]

return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  config = function()
    vim.g.mkdp_filetypes = { "markdown" }
    
    -- Set custom browser
    -- For Thorium:
    -- vim.g.mkdp_browser = "thorium-browser"
    
    -- For Firefox:
    -- vim.g.mkdp_browser = "firefox"
    
    -- Run the installation process after the plugin is loaded
    vim.defer_fn(function()
      vim.cmd("call mkdp#util#install()")
    end, 0)  -- Defer the installation to the next event loop cycle
  end,
}