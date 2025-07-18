return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 50,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
      custom = {
        "^\\.cpanm",
        "^\\.designer",
        "^\\.erg",
        "^\\.gnupg",
        "^\\.julia",
        "^\\.kde4",
        "^\\.kodi",
        "^\\.mozilla",
        "^\\.npm",
        "^\\.nv",
        "^\\.nvm",
        "^\\.pki",
        "^\\.rustup",
        "^\\.ssh",
        "^\\.subversion",
        "^\\.vim",
        "go"
      },
    },
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
    }
  end,
}