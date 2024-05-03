return {
  'rmagatti/auto-session',
  lazy = false,
  config = function()
    require('auto-session').setup {
      log_level = 'error',
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/', '~/Documents' },
      pre_save_cmds = { 'Neotree close' },
      post_restore_cmds = { 'Neotree filesystem show' },
    }
    vim.keymap.set('n', '<Leader>s', require('auto-session.session-lens').search_session, {
      noremap = true,
    })
  end,
}
