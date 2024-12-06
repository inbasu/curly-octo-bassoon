require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed={
                "ruff", 
                "ruff_lsp", 
                "ts_ls",
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
require("lspconfig").ruff_lsp.setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
}

-- TS
require("lspconfig").ts_ls.setup {}


