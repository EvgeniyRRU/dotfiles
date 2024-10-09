return {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    css = {
      require("formatter.filetypes.css").prettier,
    },
    graphql = {
      require("formatter.filetypes.graphql").prettier,
    },
    html = {
      require("formatter.filetypes.html").prettier,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    json = {
      require("formatter.filetypes.json").prettier,
    },
    ruby = {
      require("formatter.filetypes.ruby").rubocop,
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    vue = {
      require("formatter.filetypes.vue").prettier,
    },
    svelte = {
      require("formatter.filetypes.svelte").prettier,
    },
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
      -- Remove trailing whitespace without 'sed'
      -- require("formatter.filetypes.any").substitute_trailing_whitespace,
    }
  }
}
