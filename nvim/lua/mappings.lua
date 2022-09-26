local map = require('utils').map

-- common mappings
map('n', '<C-p>', ':GFiles<CR>', { silent = true })
map('n', '<Leader>c', ':Buffers<CR>', { silent = true })
map('n', '<Leader>x', ':Ag ')
map('n', '<Leader>z', ':Rg ')
map('n', '<Leader>d', ':Bdelete<CR>', { silent = true })
map('n', '<Leader>t', ':tabclose<CR>', { silent = true })
map('n', '<Leader>T', ':tabnew<CR>', { silent = true })
map('v', '//', 'y/<C-R>"<CR>')
map('n', '<F8>', ':TagbarToggle<CR>', { silent = true })
map('t', '<Esc>', '<C-\\><C-n>', { silent = true })
vim.cmd([[
nnoremap <silent><leader>X :Ag <C-R>=expand("<cword>")<CR><CR>
]])

-- NERDTree mappings
map('n', 'n<C-d>', ':NERDTreeClose<CR>', { silent = true })
map('n', 'n<C-f>', ':NERDTreeFind<CR>', { silent = true })
map('n', 'n<C-n>', ':NERDTree<CR>', { silent = true })
map('n', 'n<C-t>', ':NERDTreeToggle<CR>', { silent = true })

map('n', 'K', ':Lspsaga hover_doc<CR>', { silent = true })
map('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', { silent = true })
map('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', { silent = true })
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', { silent = true })

map('v', '<Leader>p', ':Neoformat<CR>')

map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)
