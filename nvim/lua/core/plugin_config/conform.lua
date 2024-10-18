require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black", "ruff"}, 
    typescript = { "prettier" },
    }, 
    format_on_save = {
            timeout_ms = 1000,
            async = false,
            quiet = false,
            lsp_format = "fallback"
    },
    formatters = {
            black = {
                prepend_args = {"--line-length", "120"}
                },
            isort = {
                prepend_args = {"--profile", "black"}    
            }
                
    }
}) 

