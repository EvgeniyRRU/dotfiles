HOME = os.getenv("HOME")
local ts_augroup = vim.api.nvim_create_augroup("treesitter_start", { clear = true })

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

vim.o.spelllang="en_us,ru"

vim.o.termguicolors = true

vim.o.numberwidth = 5
vim.o.termguicolors = true
-- vim.cmd 'colorscheme material'
-- vim.g.ayucolor = 'dark'
-- vim.g.material_style = 'deep ocean'

vim.g.syntastic_ruby_checkers = {'rubocop', 'mri'}

vim.g.localvimrc_ask = 0
vim.g.localvimrc_sandbox = 0

vim.g.markdown_folding = 1
vim.g.vim_markdown_folding_disabled = 1
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

vim.api.nvim_create_autocmd("FileType", {
  group = ts_augroup,
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    local lang = vim.treesitter.language.get_lang(ft) or ft

    if not pcall(vim.treesitter.language.add, lang) then
      return
    end

    pcall(vim.treesitter.start, args.buf)

    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
