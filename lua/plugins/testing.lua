return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-neotest/neotest-python",
    },
    config = function()
        local neotest = require("neotest")
        neotest.setup({
            adapters = {
                require("neotest-python")
            }
        })

        vim.keymap.set('n', '<leader>tt', "<cmd>lua require('neotest').run.run()<CR>")
        vim.keymap.set('n', '<leader>tT', "<cmd>lua require('neotest').run.run({ strategy = 'dap'})<CR>")
        vim.keymap.set('n', '<leader>tf', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
        vim.keymap.set('n', '<leader>ts', neotest.summary.toggle)
        vim.keymap.set('n', '<leader>to', function() neotest.output.open({ enter = true, auto_close = true  }) end)
        vim.keymap.set('n', '<leader>tO', neotest.output_panel.toggle)
    end
}
