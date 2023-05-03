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
nvim_lsp.tsserver.setup{
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
