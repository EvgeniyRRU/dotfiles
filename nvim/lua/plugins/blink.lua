local M = {}

M.opts = {
    keymap = {
      preset = 'default',
      ['<C-b>'] = false,
      ['<C-z>'] = false,
      ['<Tab>'] = false,
      ['<S-Tab>'] = false,
    },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = { documentation = { auto_show = false } },

    snippets = { preset = "luasnip" },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
}

return M
