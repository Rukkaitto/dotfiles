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
        auto_expand_width = true,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
      },
    }

    -- Keybindings
    vim.keymap.set('n', '<leader>e', ':Neotree reveal toggle<CR>', { desc = 'Toggles Neotree' })
  end,
}
