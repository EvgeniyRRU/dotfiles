local M = {}

local snippets_folder = vim.fn.stdpath('config')..'/luasnippets/'
local ls = require('luasnip')

function M.setup()
  ls.config.set_config {
    history = false,
    keep_roots = false,
    link_roots = false,
    link_children = false,
    exit_roots = true,
    updateevents = { "TextChanged", "TextChangedI" },
    enable_autosnippets = true,

    store_selection_keys = "<Tab>",

    ext_opts = {
      active =
        {
            virt_text = { { "●", "GruvboxOrange" } }
        },
        passive = {
            virt_text = { { "●", "GruvboxBlue" } }
        },
        visited = {
            hl_group = "GruvboxBlue"
        },
        unvisited = {
            hl_group = "GruvboxGreen"
        },
        snippet_passive = {}
    },
  }

  -- _G.snippets_clear()

  -- local snip_cmd = string.format(
  --   [[
  --   augroup snippets_clear
  --   au!
  --   au BufWritePost %s lua _G.snippets_clear()
  --   augroup END
  -- ]],
  --   snippets_folder .. "*.lua"
  -- )
  --
  -- vim.cmd(snip_cmd)
  -- vim.cmd [[command! LuaSnipEdit :lua _G.edit_ft()]]

  -- Lazy load snippets
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_snipmate").lazy_load()
  require("luasnip.loaders.from_lua").lazy_load { paths = snippets_folder }

  vim.cmd [[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]

  ls.filetype_extend("all", { "_" })
  ls.filetype_extend("javascriptreact", { "javascript" })
  ls.filetype_extend("typescript", { "javascript" })
  ls.filetype_extend("typescriptreact", { "javascript", "javascriptreact", "typescript" })

  -- vim.api.nvim_create_autocmd("ModeChanged", {
  --   group = vim.api.nvim_create_augroup("luasnip.config", { clear = true }),
  --   pattern = { "i:n", "s:n" },
  --   callback = function(e)
  --     if
  --       ls.session
  --       and ls.session.current_nodes[e.buf]
  --       and not ls.session.jump_active
  --       and not ls.choice_active()
  --     then
  --       ls.active_update_dependents()
  --       ls.unlink_current()
  --     end
  --   end,
  -- })
end

return M
