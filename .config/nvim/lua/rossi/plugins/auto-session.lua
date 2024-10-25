return {
  "rmagatti/auto-session",
  lazy = false,
  config = function()
    require('auto-session').setup({
      auto_restore_enabled = false
    })

    vim.keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>')
    vim.keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>')
  end
}
