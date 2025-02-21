require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed={
                "pyright",
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
require("lspconfig").ruff.setup {    
        settings = {
        args = {
            "--line-length=100",
        },
    },
}
require("lspconfig").pyright.setup {}

-- TS
require("lspconfig").ts_ls.setup {}
require("lspconfig").eslint.setup {}


