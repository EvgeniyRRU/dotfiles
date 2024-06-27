local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins_spec = require('lazyplugins')
local lazy_conf = require('lazyconf')

require("lazy").setup(plugins_spec, lazy_conf)

require('functions')
require('lsp')
require('mycmp')
require('treesitter')
require('settings')
require('mappings')
require('mytelescope')
