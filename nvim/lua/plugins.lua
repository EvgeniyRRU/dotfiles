return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'junegunn/vim-easy-align' -- align text plugin
  use 'scrooloose/nerdtree' -- files browser
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
  use 'StanAngeloff/php.vim'
  use 'phpactor/phpactor'

  -- js and stuff
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'MaxMEllon/vim-jsx-pretty'
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
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'autozimu/LanguageClient-neovim', branch = 'next', run = 'bash install.sh' }
  use { 'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- searching
  use { 'junegunn/fzf', run = './install --bin' }
  use 'junegunn/fzf.vim'
end)
