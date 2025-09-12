return {
  "azratul/live-share.nvim",
  dependencies = {
    "jbyuki/instant.nvim",
  },
  config = function()
    require("live-share").setup {
      port = 80, -- Default port for the public-facing service
      port_internal = 9876, -- The local port for the live share connection
      max_attempts = 40, -- Max attempts to read the URL from the service
      service_url = "/tmp/service.url", -- Path to store the service URL
      service = "nokey@localhost.run", -- Default tunneling service
      ip_local = "127.0.0.1", -- Local IP to bind to
    }

    -- Key mappings for live-share commands
    vim.api.nvim_set_keymap(
      "n",
      "<leader>ls",
      "<cmd>LiveShareServer<CR>",
      { noremap = true, silent = true, desc = "Start Live Share server" }
    )
    vim.api.nvim_set_keymap("n", "<leader>lj", ":LiveShareJoin ", { noremap = true, desc = "Join Live Share session" })
  end,
}
