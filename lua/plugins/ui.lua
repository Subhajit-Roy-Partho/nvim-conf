-- Minimal UI plugins

return {
  {
    'vague-theme/vague.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme vague'
    end,
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      delay = 0,
      spec = {
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>h', group = '[H]op' },
      },
    },
  },
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    keys = {
      { '<leader>tz', '<cmd>ZenMode<CR>', desc = 'Toggle Zen Mode' },
    },
    opts = {},
  },
}
