require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed={
                "pyright", 
                "ruff", 
                "ruff_lsp", 
                "ts_ls",
        }
})
require("lspconfig").pyright.setup {}
require("lspconfig").ruff_lsp.setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
}
require("lspconfig").gopls.setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
}
require("lspconfig").ts_ls.setup {}


