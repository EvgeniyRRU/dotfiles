return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'junegunn/vim-easy-align' -- align text plugin
  use 'tpope/vim-surround' -- awesome plugin for text quoting
  use 'tpope/vim-commentary' -- commenting plugin
  use 'tpope/vim-abolish' -- awesome substitution plugin
  use 'tpope/vim-unimpaired' -- handy hotkeys plugin
  use 'tpope/vim-obsession' -- tracking vim session for restore
  use 'myusuf3/numbers.vim' -- handy show relativ numbers
  use 'easymotion/vim-easymotion' -- awesome jumping in window
  use 'moll/vim-bbye' -- close window after close buffer
  use 'embear/vim-localvimrc' -- local config for folder
  use 'kshenoy/vim-signature' -- show labels in sign columns
  use 'majutsushi/tagbar' -- ctags on right panel
  use 'rhysd/vim-grammarous' -- grammar checker
  use 'andymass/vim-matchup' -- matching parens and more
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config =  require('nvtree').setup()
  }

  -- git
  use 'tpope/vim-fugitive' -- main git plugin
  use 'airblade/vim-gitgutter' -- diff in sign column

  -- ruby
  use { 'vim-ruby/vim-ruby', ft = 'ruby' }
  use { 'tpope/vim-rails', ft =  'ruby' }

  -- clojure
  use 'Olical/conjure'

  -- golang
  use 'fatih/vim-go'

  -- php
  use { 'StanAngeloff/php.vim', ft = 'php' }
  use { 'phpactor/phpactor', ft = 'php' }

  -- js and stuff
  use 'pantharshit00/vim-prisma'
  use 'posva/vim-vue'
  use 'jparise/vim-graphql'
  use 'reasonml-editor/vim-reason-plus'
  use 'rescript-lang/vim-rescript'
  use 'elm-tooling/elm-vim'

  -- markup languages
  use 'digitaltoad/vim-jade'
  use { 'cakebaker/scss-syntax.vim', ft = 'scss' }
  use { 'wavded/vim-stylus', ft = 'stylus' }
  -- use 'tpope/vim-haml'
  use 'plasticboy/vim-markdown'
  use { 'mustache/vim-mustache-handlebars', ft = 'handlebars' }

  -- devops
  use 'martinda/Jenkinsfile-vim-syntax'
  use 'chr4/nginx.vim'

  -- appearance
  use 'arcticicestudio/nord-vim'
  use 'ayu-theme/ayu-vim'
  use 'joshdick/onedark.vim'
  use 'sainnhe/sonokai'
  use 'morhetz/gruvbox'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'

  use 'sbdchd/neoformat'

  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  -- snippets
  use { 'L3MON4D3/LuaSnip',
        tag = 'v<CurrentMajor>.*',
        config = require('snips').setup()
      }

  -- searching
  use { 'junegunn/fzf', run = './install --bin' }
  use 'junegunn/fzf.vim'
end)
