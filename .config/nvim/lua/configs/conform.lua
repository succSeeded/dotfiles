local options = {
    opt = {
        shiftwidth = 4,
        tabstop = 4,
    },

    formatters_by_ft = {
        lua = { "stylua" },
        -- css = { "prettier" },
        -- html = { "prettier" },
    },

    formatting = {
        format_on_save = {
            enabled = false,
        --   -- These options will be passed to conform.format()
        --   timeout_ms = 500,
        --   lsp_fallback = true,
        },
    },
}

return options
