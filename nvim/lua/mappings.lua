local map = require('utils').map

-- common mappings
map('n', '<Leader>d', ':Bdelete<CR>', { silent = true })
map('n', '<Leader>t', ':tabclose<CR>', { silent = true })
map('n', '<Leader>T', ':tabnew<CR>', { silent = true })
map('v', '//', 'y/<C-R>"<CR>')
map('n', '<F8>', ':TagbarToggle<CR>', { silent = true })
map('n', '<F9>', ':set spell!<CR>', { silent = true })
map('t', '<Esc>', '<C-\\><C-n>', { silent = true })

-- NERDTree mappings
map('n', 'n<C-d>', ':NvimTreeClose<CR>', { silent = true })
map('n', 'n<C-f>', ':NvimTreeFindFile<CR>', { silent = true })
map('n', 'n<C-n>', ':NvimTreeOpen<CR>', { silent = true })
map('n', 'n<C-t>', ':NvimTreeToggle<CR>', { silent = true })

map('n', '<Leader>P', ':FormatWrite<CR>')

map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)

-- leader xp -> paste registry to system clipboard
map("n", "<Leader>xp", ":call setreg('+', getreg('@'))<CR>", opts)
-- leader xc -> copy current path + line number to system clipboard
map("n", "<Leader>xc", ":call setreg('+', expand('%:.') .. ':' .. line('.'))<CR>", opts)
-- open tmux pane with path of current file:
map("n", "<leader>tm", ":let $VIM_DIR=expand('%:p:h')<CR>:silent !tmux split-window -hc $VIM_DIR<CR>", nosilent)

map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
map('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

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

-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
map("n", "gh", "<cmd>Lspsaga finder<CR>")

-- Code action
map({"n","v"}, "lca", "<cmd>Lspsaga code_action<CR>")

-- Rename
map("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Rename word in whole project
map("n", "gr", "<cmd>Lspsaga rename ++project<CR>")

-- Peek Definition
-- you can edit the definition file in this float window
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>")

-- Go to Definition
map("n","gd", "<cmd>Lspsaga goto_definition<CR>")

-- Show line diagnostics you can pass argument ++unfocus to make
-- show_line_diagnostics float window unfocus
map("n", "<C-l>", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
map("n", "<C-s>", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Show buffer diagnostic
map("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Diagnostic jump can use `<c-o>` to jump back
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Diagnostic jump with filter like Only jump to error
map("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
map("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Toggle Outline
map("n","<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- if there has no hover will have a notify no information available
-- to disable it just Lspsaga hover_doc ++quiet
-- press twice it will jump into hover window
map("n", "K", "<cmd>Lspsaga hover_doc<CR>")
-- if you want keep hover window in right top you can use ++keep arg
-- notice if you use hover with ++keep you press this map it will
-- close the hover window .if you want jump to hover window must use
-- wincmd command <C-w>w
map("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")

-- Callhierarchy
map("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
map("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Float terminal
map({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
map("n", "<C-k>", "<Cmd>Lspsaga signature_help<CR>")

-- hop-nvim mappings
map("n", "<leader>hw", function()
  require"hop".hint_words()
end)
map("n", "<leader>hc", function()
  require"hop".hint_char1()
end)
map("n", "<leader>hC", function()
  require"hop".hint_char2()
end)

-- neotest mappings
map("n", "<leader>tt", function()
  require("neotest").run.run()
end)
map("n", "<leader>tT", function()
  require("neotest").run.run(vim.fn.expand("%"))
end)
