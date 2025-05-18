return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "🚨",
                    [vim.diagnostic.severity.WARN] = "⚠️",
                    [vim.diagnostic.severity.INFO] = "ℹ️",
                    [vim.diagnostic.severity.HINT] = "💡",
                },
            },
        })

        require("neo-tree").setup({
            close_if_last_window = false,
            filesystem = {
                hijack_netrw_behavior = "open_current",
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                },
            },
            window = {
                width = 30,
            },
        })
    end,
}
