return {
    {
        
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')
            local dapui = require('dapui')
            -- Set keybindings
            vim.keymap.set('n', '<C-b>', function() dap.toggle_breakpoint() end, {})
            vim.keymap.set('n', '<S-t>', function() dap.continue() end, {})
            vim.keymap.set('n','<S-x>', function() dap.terminate() dap.repl.close() dapui.close() end, {})
        end,
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {'mfussenegger/nvim-dap'},
        config = function()
            local dap = require('dap')
            local dapui = require('dapui')
            require("dap-go").setup()
            dapui.setup()

            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
    'nvim-neotest/nvim-nio',
    'leoluz/nvim-dap-go',
}

