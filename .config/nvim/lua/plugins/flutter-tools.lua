return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
    'mfussenegger/nvim-dap',
  },
  config = function()
    require('flutter-tools').setup {
      fvm = true,
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
    }
  end,
}
