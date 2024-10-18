require('lint').linters_by_ft = {
  markdown = {'vale'},
  python = {'ruff', 'mypy' },
  typescript = { 'ts_ls' },
}


vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})