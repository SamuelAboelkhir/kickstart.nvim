return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.options = opts.options or {}
    opts.options.theme = "vscode"

    return opts
  end,
}
