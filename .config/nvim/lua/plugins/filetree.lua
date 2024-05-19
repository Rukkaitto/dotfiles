return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'right',
      },
    }

    -- Keybindings
    vim.keymap.set('n', '<leader>e', ':Neotree reveal toggle<CR>', { desc = 'Toggles Neotree' })
  end,
}
