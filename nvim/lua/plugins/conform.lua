local M = {}

M.setup = {
  formatters_by_ft = {
    javascript = { "prettier", "prettierd",  stop_after_first = true },
    javascriptreact = { "prettier", "prettierd",  stop_after_first = true },
    python = { "ruff_format", "ruff_organize_imports", "ruff_uv" },
    rust = { "rustfmt", lsp_format = "fallback" },
    typescript = { "prettier", "prettierd",  stop_after_first = true },
    typescriptreact = { "prettier", "prettierd",  stop_after_first = true },
  },
  formatters = {
    ruff_uv = {
      command = "uv",
      args = { "run", "ruff", "format", "--stdin-filename", "$FILENAME" },
      cwd = require("conform.util").get_git_root,
    }
  }
}

return M
