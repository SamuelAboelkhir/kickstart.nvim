return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- latest stable release
  event = { "BufReadPre */Documents/Obsidian_vaults/**/*.md" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "hrsh7th/nvim-cmp", optional = true },
  },
  opts = {
    workspaces = {
      {
        name = "all",
        path = vim.fn.expand "~/Documents/Obsidian_vaults",
      },
      {
        name = "personal",
        path = vim.fn.expand "~/Documents/Obsidian_vaults/personal",
      },
      {
        name = "study",
        path = vim.fn.expand "~/Documents/Obsidian_vaults/study",
      },
      {
        name = "work",
        path = vim.fn.expand "~/Documents/Obsidian_vaults/work",
      },
    },
    daily_notes = {
      folder = "daily",
    },
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
  },
}
