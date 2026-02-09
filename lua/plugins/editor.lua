-- Minimal editor plugins for writing and reading

return {
  'tpope/vim-sleuth',
  {
    'echasnovski/mini.nvim',
    event = 'VeryLazy',
    config = function()
      require('mini.ai').setup { n_lines = 300 }
      require('mini.surround').setup()
    end,
  },
  {
    'bullets-vim/bullets.vim',
    ft = { 'markdown', 'text' },
    config = function()
      vim.g.bullets_enabled_file_types = { 'markdown', 'text' }
    end,
  },
  { 'rickhowe/wrapwidth', ft = { 'markdown', 'text' } },
}
