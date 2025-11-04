vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    -- аналог твоего on_attach
    vim.bo[args.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    -- тут можно добавить keymaps/настройки под клиент по supports_method()
    -- пример:
    -- local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    -- if client:supports_method('textDocument/hover') then
    --   vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = args.buf})
    -- end
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
