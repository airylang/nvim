local keyset = vim.keymap.set
keyset('n', '<F1>', require'dap'.toggle_breakpoint)
keyset('n', '<F2>', require'dap'.continue)
keyset('n', '<F3>', require('dap').step_over)
keyset('n', '<F4>', require('dap').step_into)
keyset('n', '<F5>', require('dap').repl.open)
keyset('n', '<F6>', require('jdtls.dap').setup_dap_main_class_configs)
keyset('n', '<F7>', require("dapui").toggle)

-- require("dapui").open()
-- require("dapui").close()
-- require("dapui").toggle()
