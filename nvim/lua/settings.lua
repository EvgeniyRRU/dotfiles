HOME = os.getenv("HOME")

vim.g.mapleader = ' '
-- vim.g.maplocalleader = '\\'

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false    -- http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
vim.o.history = 50
vim.o.ruler = true    -- show the cursor position all the time
vim.o.showcmd = true       -- display incomplete commands
vim.o.laststatus = 2  -- Always display the status line
vim.o.autowrite = true   -- Automatically :write before running commands

-- Softtabs, 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true

vim.o.list = true
vim.o.listchars = 'tab:»·,trail:·,nbsp:·' -- Display extra whitespace
vim.o.joinspaces = false

vim.o.spellfile = HOME .. '/.config/nvim/spell/en.utf-8.add'

vim.o.termguicolors = true

vim.o.numberwidth = 5
vim.o.termguicolors = true
vim.cmd 'colorscheme material'
vim.g.ayucolor = 'dark'
vim.g.material_style = 'deep ocean'

vim.g.syntastic_ruby_checkers = {'rubocop', 'mri'}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.localvimrc_ask = 0
vim.g.localvimrc_sandbox = 0

vim.g.markdown_folding = 1
vim.g.vim_markdown_folding_disabled = 1
vim.g.neoformat_try_node_exe = 1
vim.g.camelcasemotion_key = '<leader>'

vim.cmd([[
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
" au BufNewFile,BufRead * set number
au BufNewFile,BufRead *.ejs set ft=html
au BufNewFile,BufRead *.styl set ft=stylus

autocmd Filetype php setlocal ts=4 sts=4 sw=4
set backspace=2
set clipboard+=unnamed
]])

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

require('lualine').setup()
require('nvim-ts-autotag').setup()
require('colorizer').setup()

require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
    end
})
