local M = {}

M.config = {
  config = vim.fn.expand("~/.config/mcphub/servers.json"),
  port = 37373,
  shutdown_delay = 5 * 60 * 1000,
  use_bundled_binary = false,
  mcp_request_timeout = 60000,
  global_env = {},
  workspace = {
    enabled = true,
    look_for = { ".mcphub/servers.json", ".vscode/mcp.json", ".cursor/mcp.json" },
    reload_on_dir_changed = true,
    port_range = { min = 40000, max = 41000 },
    get_port = nil,
  },
  auto_approve = true, -- Автоматически одобрять MCP tool calls
  auto_toggle_mcp_servers = true,
  extensions = {
    avante = {
      make_slash_commands = true,
    },
    codecompanion = {
      make_slash_commands = true,
    },
  },
  -- Plugin options
  native_servers = {},
  builtin_tools = {
    edit_file = {},
  },
  ui = {
    window = {
      width = 0.8,
      height = 0.8,
      align = "center",
      relative = "editor",
      zindex = 50,
      border = "rounded",
    },
    wo = {
      winhl = "Normal:MCPHubNormal,FloatBorder:MCPHubBorder",
    },
  },
  json_decode = nil,
  on_ready = function(hub)
    vim.notify("MCPHub ready", vim.log.levels.INFO)
  end,
  on_error = function(err)
    vim.notify("MCPHub error: " .. err, vim.log.levels.ERROR)
  end,
  log = {
    level = vim.log.levels.DEBUG,
    to_file = true,
    file_path = vim.fn.stdpath("cache") .. "/mcphub.log",
    prefix = "MCPHub",
  },
}

return M
