return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({

        options = {
            mode = "tabs",
            style_preset = bufferline.style_preset.default,
            close_command = "tabclose! %d",       -- can be a string | function, | false see "Mouse actions"
            right_mouse_command = "tabclose! %d", -- can be a string | function | false, see "Mouse actions"
            left_mouse_command = "tab %d",    -- can be a string | function, | false see "Mouse actions"
        }
        })
    end,
}
