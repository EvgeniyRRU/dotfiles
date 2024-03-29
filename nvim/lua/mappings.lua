local map = require('utils').map

-- common mappings
map('n', '<Leader>d', ':Bdelete<CR>', { silent = true })
map('n', '<Leader>t', ':tabclose<CR>', { silent = true })
map('n', '<Leader>T', ':tabnew<CR>', { silent = true })
map('v', '//', 'y/<C-R>"<CR>')
map('n', '<F8>', ':TagbarToggle<CR>', { silent = true })
map('t', '<Esc>', '<C-\\><C-n>', { silent = true })

-- NERDTree mappings
map('n', 'n<C-d>', ':NvimTreeClose<CR>', { silent = true })
map('n', 'n<C-f>', ':NvimTreeFindFile<CR>', { silent = true })
map('n', 'n<C-n>', ':NvimTreeOpen<CR>', { silent = true })
map('n', 'n<C-t>', ':NvimTreeToggle<CR>', { silent = true })

map('v', '<Leader>p', ':Neoformat<CR>')

map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)

vim.cmd([[
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expandable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.

snoremap <silent> <C-b> <cmd>lua require('luasnip').jump(1)<Cr>
inoremap <silent> <C-b> <cmd>lua require('luasnip').jump(1)<Cr>
inoremap <silent> <C-z> <cmd>lua require('luasnip').jump(-1)<Cr>
snoremap <silent> <C-z> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-n> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-n>'
smap <silent><expr> <C-n> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-n>'
imap <silent><expr> <C-p> luasnip#choice_active() ? '<Plug>luasnip-prev-choice' : '<C-p>'
smap <silent><expr> <C-p> luasnip#choice_active() ? '<Plug>luasnip-prev-choice' : '<C-p>'
]])

vim.g.doge_mapping = '<Leader>j'
