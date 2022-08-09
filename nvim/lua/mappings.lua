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

-- CoC mappings
vim.keymap.set('v', '<Leader>p', '<Plug>(coc-format-selected)', { noremap = true })
vim.keymap.set('n', 'K', ':call CocAction("doHover")<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', '<leader>gy', '<Plug>(coc-type-definition)', { silent = true })
vim.keymap.set('n', '<leader>gr', '<Plug>(coc-references)', { silent = true })
vim.keymap.set('n', '<leader>gr', '<Plug>(coc-references)', { silent = true })
vim.keymap.set('n', '[g', '<Plug>(coc-diagnostic-next)', { silent = true })
vim.keymap.set('n', ']g', '<Plug>(coc-diagnostic-prev)', { silent = true })
vim.keymap.set('n', '<Leader>do', '<Plug>(coc-codeaction)', { silent = true })
vim.keymap.set('n', '<Leader>rn', '<Plug>(coc-rename)', { silent = true })
