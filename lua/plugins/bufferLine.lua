return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            local bufferline = require('bufferline')
            local gray = "#585b70"
            local links = "#89dceb"

            bufferline.setup({
                options = {
                    mode = "buffers",
                    numbers = "none",
                    color_icons = true,  -- Включены цветные иконки
                    indicator = {
                        style = "underline",
                    },
                    modified_icon = "✏️",
                    left_trunc_marker = "⬅️",
                    right_trunc_marker = "➡️",
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(_, _, diagnostics_dict, _)
                        local icons = { error = "🚨", warning = "⚠️", info = "ℹ️", hint = "💡" }
                        local s = ""
                        for e, _ in pairs(diagnostics_dict) do
                            s = s .. (icons[e] or "")
                        end
                        return s
                    end,
                    always_show_bufferline = true,
                },
                highlights = {
                    background = {
                        fg = gray,
                    },
                    buffer_selected = {
                        fg = links,
                        bold = true,
                    },
                    buffer_visible = {
                        fg = gray,
                    },
                    separator = {
                        bg = "#1e1e2e",
                        fg = "#1e1e2e",
                    },
                    diagnostic = {
                        fg = "#ff0000",
                    },
                },
            })
        end,
    }
}
