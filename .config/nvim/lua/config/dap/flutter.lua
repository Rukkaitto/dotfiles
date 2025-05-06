local dap = require 'dap'

require('dap').adapters.dart = {
  type = 'executable',
  command = vim.fn.stdpath 'data' .. '/mason/bin/dart-debug-adapter',
  args = { 'flutter' },
}

dap.configurations.dart = {
  {
    type = 'dart',
    request = 'launch',
    name = 'Launch Flutter App (Manual)',
    dartSdkPath = vim.fn.getcwd() .. '/.fvm/flutter_sdk/bin/cache/dart-sdk/bin/dart',
    flutterSdkPath = vim.fn.getcwd() .. '/.fvm/flutter_sdk',
    program = '${workspaceFolder}/apps/flutter_poker/lib/main.dart',
    cwd = '${workspaceFolder}/apps/flutter_poker',
  },
}
