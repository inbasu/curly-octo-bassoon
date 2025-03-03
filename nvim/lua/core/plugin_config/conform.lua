require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "ruff_format" },
        typescript = { "prettier" },
    },
    formatters = {
        ruff_format = {
            append_args = {
                "--config",
                "line-length = 119",
                "max-nested-blocks = 10",
                "docstring-quotes = 'single'",
                "inline-quotes = 'double'"
            },
        },
    },
    format_on_save = {
        timeout_ms = 5000,
        async = false,
        quiet = false,
        lsp_format = "fallback"
    },

})
