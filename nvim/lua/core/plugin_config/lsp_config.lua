require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed={
                "ruff", 
                "ts_ls",
                "eslint",
                "clangd",
        }
})

-- C 
require("lspconfig").clangd.setup {}

-- Go
require("lspconfig").gopls.setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- Python
require("lspconfig").pyright.setup {}

-- TS
require("lspconfig").ts_ls.setup {}
require("lspconfig").eslint.setup {}


