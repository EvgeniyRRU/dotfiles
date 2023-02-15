local M = {}

local nvtree = require('nvim-tree')

function M.setup()
  nvtree.setup({
    view = {
      adaptive_size = true,
      width = 50,
      number = true,
      relativenumber = true,
      signcolumn = "yes",
    },
    renderer = {
      group_empty = true,
    },
  })
end

return M
