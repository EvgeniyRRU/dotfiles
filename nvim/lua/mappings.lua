-- common mappings
vim.keymap.set('n', '<C-p>', ':GFiles<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>c', ':Buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>x', ':Ag ', { noremap = true })
vim.keymap.set('n', '<Leader>z', ':Rg ', { noremap = true })
vim.keymap.set('n', '<Leader>d', ':Bdelete<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>t', ':tabclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>T', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('v', '//', 'y/<C-R>"<CR>', { noremap = true })
vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.cmd([[
nnoremap <silent><leader>X :Ag <C-R>=expand("<cword>")<CR><CR>
]])

-- NERDTree mappings
vim.keymap.set('n', 'n<C-d>', ':NERDTreeClose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'n<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'n<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'n<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })

vim.keymap.set('v', '<Leader>p', ':Neoformat<CR>', { noremap = true })

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
