require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black", "ruff"}, 
    typescript = { "prettier" },
    }, 
    format_on_save = {
            timeout_ms = 5000,
            async = false,
            quiet = false,
            lsp_format = "fallback"
    },
                
}) 

