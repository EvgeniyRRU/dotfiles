local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { noremap=true, silent=true }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', 'lwa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', 'lwr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', 'lwl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  vim.keymap.set('n', 'lD', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', 'lrn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'lca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', 'lf', vim.lsp.buf.formatting, opts)  --...
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
