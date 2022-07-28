HOME = os.getenv("HOME")

vim.g.python3_host_prog = HOME .. '/.pyenv/shims/python'

vim.g.mapleader = ' '
-- vim.g.maplocalleader = '\\'

vim.o.backspace = 2   -- Backspace deletes like most programs in insert mode
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
vim.cmd 'colorscheme gruvbox'
vim.g.ayucolor = 'dark'

vim.g.syntastic_ruby_checkers = {'rubocop', 'mri'}
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeShowBookmarks = 1

-- Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<c-b>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-z>'
-- If you want :UltiSnipsEdit to split your window.
vim.g.UltiSnipsEditSplit = 'horizontal'

vim.g.localvimrc_ask = 0
vim.g.localvimrc_sandbox = 0

vim.g.markdown_folding = 1
vim.g.vim_markdown_folding_disabled = 1
vim.g.coc_global_extensions = { 'coc-tsserver' }

vim.cmd([[
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
" au BufNewFile,BufRead * set number
au BufNewFile,BufRead *.ejs set ft=html
au BufNewFile,BufRead *.styl set ft=stylus

au BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
au BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd Filetype php setlocal ts=4 sts=4 sw=4
set backspace=2
set clipboard+=unnamed
]])

require('lualine').setup()
