local M = {}

M.config = {
  adapters = {
    http = {
      ollama_remote = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          name = "ollama_remote",
          env = {
            url = "https://awesomellm.com",
            model = "/model_name",
            models_endpoint = "/model_path",
          },
        })
      end,
    },
  },
  strategies = {
    chat = {
      adapter = "ollama_remote",
    },
    inline = {
      adapter = "ollama_remote",
    },
    agent = {
      adapter = "ollama_remote",
    },
    cmd = {
      adapter = "ollama_remote",
    },
  },
  extensions = {
    mcphub = {
      callback = "mcphub.extensions.codecompanion",
      opts = {
        -- MCP Tools 
        make_tools = true,              -- Make individual tools (@server__tool) and server groups (@server) from MCP servers
        show_server_tools_in_chat = true, -- Show individual tools in chat completion (when make_tools=true)
        add_mcp_prefix_to_tool_names = false, -- Add mcp__ prefix (e.g `@mcp__github`, `@mcp__neovim__list_issues`)
        show_result_in_chat = true,      -- Show tool results directly in chat buffer
        format_tool = nil,               -- function(tool_name:string, tool: CodeCompanion.Agent.Tool) : string Function to format tool names to show in the chat buffer
        -- MCP Resources
        make_vars = true,                -- Convert MCP resources to #variables for prompts
        -- MCP Prompts 
        make_slash_commands = true,      -- Add MCP prompts as /slash commands
      }
    }
  }
}

return M
