local map = require('utils').map

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { silent = true, buffer = bufnr }
  map('n', 'gD', vim.lsp.buf.declaration, opts)
  map('n', 'gd', vim.lsp.buf.definition, opts)
  map('n', 'K', vim.lsp.buf.hover, opts)
  map('n', 'gi', vim.lsp.buf.implementation, opts)
  map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  map('n', 'lwa', vim.lsp.buf.add_workspace_folder, opts)
  map('n', 'lwr', vim.lsp.buf.remove_workspace_folder, opts)
  map('n', 'lwl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  map('n', 'lD', vim.lsp.buf.type_definition, opts)
  map('n', 'lrn', vim.lsp.buf.rename, opts)
  map('n', 'lca', vim.lsp.buf.code_action, opts)
  map('n', 'gr', vim.lsp.buf.references, opts)
  map('n', 'lf', vim.lsp.buf.formatting, opts)  --...
end


local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

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
