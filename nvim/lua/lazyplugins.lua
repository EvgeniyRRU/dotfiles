local gitsigns_config = require("plugins.gitsigns")

return {
  -- common plugins

  -- align text plugin
  { "junegunn/vim-easy-align" },
  -- awesome plugin for text quoting
  { "tpope/vim-surround" },
  -- commenting plugin
  { "tpope/vim-commentary" },
  -- awesome substitution plugin
  { "tpope/vim-abolish" },
  -- handy hotkeys plugin
  { "tpope/vim-unimpaired" },
  -- tracking vim session for restore
  { "tpope/vim-obsession" },
  -- handy show relativ numbers
  { "myusuf3/numbers.vim" },
  -- awesome jumping in window
  {
    "smoka7/hop.nvim",
    config = function()
      require("hop").setup({})
    end
  },
  -- jumping in word
  { "bkad/CamelCaseMotion" },
  -- close window after close buffer
  { "moll/vim-bbye" },
  -- show labels in sign columns
  { "kshenoy/vim-signature" },
  -- ctags on right panel
  { "majutsushi/tagbar" },
  -- grammar checker
  { "rhysd/vim-grammarous" },
  -- matching parens and more
  { "andymass/vim-matchup" },
  -- file browser
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons", lazy = true } },
    config = function()
      require("lualine").setup()
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { { "nvim-tree/nvim-web-devicons", lazy = true } },
    config = function()
      require("nvim-tree").setup(require("plugins.nvim-tree"))
    end
  },

  -- git intagration

  -- main git plugin
  { "tpope/vim-fugitive" },
  -- diff in sign column
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup(require("plugins.gitsigns"))
    end
  },

  { "sindrets/diffview.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-tree/nvim-web-devicons", lazy = true }
    },
    event = "VeryLazy"
  },

  -- ruby
  { "vim-ruby/vim-ruby", ft = "ruby" },
  { "tpope/vim-rails", ft =  "ruby" },

  -- clojure
  { "Olical/conjure", ft = "clojure" },

  -- golang
  { "fatih/vim-go", ft = "go" },

  -- php
  { "StanAngeloff/php.vim", ft = "php" },
  { "phpactor/phpactor", ft = "php" },

  -- js and stuff
  { "pangloss/vim-javascript" },
  { "leafgarland/typescript-vim" },
  { "peitalin/vim-jsx-typescript" },
  { "MaxMEllon/vim-jsx-pretty" },
  { "pantharshit00/vim-prisma" },
  { "posva/vim-vue" },
  { "jparise/vim-graphql" },
  { "reasonml-editor/vim-reason-plus" },
  { "rescript-lang/vim-rescript" },
  { "elm-tooling/elm-vim" },

   -- markup languages
  { "digitaltoad/vim-jade", ft = "pug" },
  { "cakebaker/scss-syntax.vim", ft = "scss" },
  { "wavded/vim-stylus", ft = "stylus" },

   -- appearance
  { "arcticicestudio/nord-vim" },
  { "ayu-theme/ayu-vim" },
  { "joshdick/onedark.vim" },
  { "sainnhe/sonokai" },
  { "morhetz/gruvbox" },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme material]])
      vim.g.material_style = "deep ocean"

      require("material").setup(require("plugins.material"))
    end
  },

  -- add background colors to colors value
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  },

  -- find and replace stuff
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup({
        use_trouble_qf = true
      })
    end,
    event = "VeryLazy"
  },

  -- lsp
  { "neovim/nvim-lspconfig" },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      { "nvim-lspconfig" },
      { "nvim-tree/nvim-web-devicons", lazy = true },
      { "nvim-treesitter/nvim-treesitter" }
    }
  },

  -- extended quickfix
  {
    "folke/trouble.nvim",
    opts = require("plugins.trouble")["opts"],
    cmd = "Trouble",
    keys = require("plugins.trouble")["keys"],
  },

  -- treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },

  -- completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "saadparwaiz1/cmp_luasnip" },
    }
  },
  { "onsails/lspkind.nvim" },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end
  },

  -- code formatter
  { "sbdchd/neoformat" },

  -- generate jsdoc
  { "kkoomen/vim-doge", build = ":call doge#install()" },

  -- folding plugin
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
        return {"treesitter", "indent"}
        end
      })
    end
  },

  -- snippets
  { "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require("plugins.luasnips").setup()
    end
  },

  -- searching
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    event = "VeryLazy"
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  -- test runner
  {
    "nvim-neotest/neotest",
    event = "LspAttach",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
      "olimorris/neotest-rspec",
      "rouge8/neotest-rust",
      "mrcjkb/neotest-haskell"
    },
    config = function()
      require("neotest").setup(require("plugins.neotest")["config"])
    end,
  }
}
