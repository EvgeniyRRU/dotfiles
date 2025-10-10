vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    vim.bo[args.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
  end,
})

vim.lsp.config('pyright', {})

vim.lsp.config('ts_ls', {})

vim.lsp.config('stylelint_lsp', {
  filetypes = {
    'css',
    'less',
    'scss',
  }
})

vim.lsp.config('ruby_lsp', {})

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {}
  }
})

vim.lsp.config('eslint', {})

vim.lsp.enable({
  'pyright',
  'ts_ls',
  'stylelint_lsp',
  'ruby_lsp',
  'rust_analyzer',
  'eslint',
})
