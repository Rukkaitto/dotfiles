return { -- Colorscheme
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin-macchiato'

    vim.cmd.hi 'Comment gui=none'

    -- Removes the background
    vim.cmd.hi 'Normal guibg=none'
    vim.cmd.hi 'NormalNC guibg=none'
    vim.cmd.hi 'NeoTreeNormal guibg=none'
    vim.cmd.hi 'NeoTreeNormalNC guibg=none'
    vim.cmd.hi 'NeoTreeStatusLine guibg=none'
    vim.cmd.hi 'NeoTreeStatusLineNC guibg=none'
    vim.cmd.hi 'StatusLine guibg=none'
    vim.cmd.hi 'StatusLineNC guibg=none'
  end,
}
