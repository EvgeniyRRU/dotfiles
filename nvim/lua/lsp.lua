local map = require('utils').map

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local lsp_flags = {}

nvim_lsp.pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
nvim_lsp.ts_ls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
nvim_lsp.stylelint_lsp.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    filetypes = {
      'css',
      'less',
      'scss',
    }
}
nvim_lsp.ruby_lsp.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
nvim_lsp.rust_analyzer.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ['rust-analyzer'] = {}
    }
}
nvim_lsp.eslint.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
