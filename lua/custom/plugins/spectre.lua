return {
  {
    'nvim-pack/nvim-spectre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Spectre',
    keys = {
      {
        '<leader>s',
        function()
          require('spectre').open()
        end,
        desc = 'Search and Replace (Spectre)',
      },
    },
    config = true, -- uses the default setup
  },
}
