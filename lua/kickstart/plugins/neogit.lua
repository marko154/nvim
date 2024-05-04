return {
  'NeogitOrg/neogit',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>fb', ':Telescope git_branches<CR>', { desc = '[F]ind [B]ranch' })
    require('neogit').setup {}
  end,
}
