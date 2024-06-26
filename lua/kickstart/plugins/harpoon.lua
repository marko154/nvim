return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = 'VeryLazy',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- vim.keymap.set('n', '<Tab>', function()
    --   harpoon:list():next { ui_nav_wrap = true }
    -- end)
    -- vim.keymap.set('n', '<S-Tab>', function()
    --   harpoon:list():prev { ui_nav_wrap = true }
    -- end)
  end,
}
