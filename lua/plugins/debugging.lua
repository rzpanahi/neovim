return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            -- custom keymaps
            vim.keymap.set("n", "<f5>", function()
                require("dap").continue()
            end)
            vim.keymap.set("n", "<f10>", function()
                require("dap").step_over()
            end)
            vim.keymap.set("n", "<f11>", function()
                require("dap").step_into()
            end)
            vim.keymap.set("n", "<f12>", function()
                require("dap").step_out()
            end)
            vim.keymap.set("n", "<leader>db", function()
                require("dap").toggle_breakpoint()
            end)
        end,
    },
}
