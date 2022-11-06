local M = {}

local nvtree = require('nvim-tree')

function M.setup()
  nvtree.setup({
    view = {
      adaptive_size = true,
      width = 50,
      number = false,
      relativenumber = false,
      signcolumn = "yes",
    },
    renderer = {
      group_empty = true,
    },
  })
end

return M
