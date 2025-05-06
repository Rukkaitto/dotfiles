return {
  'rcarriga/nvim-dap-ui',
  dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  config = function()
    local dap, dapui = require 'dap', require 'dapui'
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = 'DAP Continue' })
    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'DAP Toggle Breakpoint' })
    vim.keymap.set('n', '<leader>dso', dap.step_over, { desc = 'DAP Step Over' })
    vim.keymap.set('n', '<leader>dsi', dap.step_into, { desc = 'DAP Step Into' })
    vim.keymap.set('n', '<leader>dout', dap.step_out, { desc = 'DAP Step Out' })

    vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = 'DAP UI Toggle' })
    vim.keymap.set({ 'n', 'v' }, '<leader>de', dapui.eval, { desc = 'DAP Eval' })
  end,
}
