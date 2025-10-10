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
}

return M
