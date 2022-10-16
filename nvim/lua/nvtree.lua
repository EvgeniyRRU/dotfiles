local M = {}

local nvtree = require('nvim-tree')

function M.setup()
  nvtree.setup({
    renderer = {
      group_empty = true,
    },
  })
end

return M
