return {
  'mfussenegger/nvim-dap',
  lazy = false,
  config = function()
    require 'config.dap.flutter'
  end,
}
