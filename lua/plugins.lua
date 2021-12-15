vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()

  -- Packer can manage itself.
  use 'wbthomason/packer.nvim'

  -- Vim sneak successor
  use 'ggandor/lightspeed.nvim'

  -- Provides a single command that deletes the current buffer and handles the current window in a smart way.
  use 'mhinz/vim-sayonara' 

  -- cs'"
  use 'tpope/vim-surround'

  -- Commentary.
  use 'b3nj5m1n/kommentary'

  -- Helpers for UNIX.
  use 'tpope/vim-eunuch'

  -- Live edit
  use 'turbio/bracey.vim'

  -- Nvim Treesitter configurations and abstraction layer
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = [[ require('config.treesitter') ]]
  }

  -- Statusline
  use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = [[ require('config.lualine') ]]
  }


  -- Colorizer
  use {
      'norcalli/nvim-colorizer.lua',
      config = function()
          require'colorizer'.setup()
        end
  }

  -- A snazzy bufferline for Neovim.
  use {
      'akinsho/bufferline.nvim',
      requires = {'kyazdani42/nvim-web-devicons'},
      config = [[require('config.bufferline')]]
  }

-- A super powerful autopairs for Neovim. It support multiple character.
  use { 
       'windwp/nvim-autopairs',
       config = [[ require('config.autopairs') ]]
  }

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = [[require('config.nvimtree')]]
  }

  -- Adds indentation guides to all lines (including empty lines).
  use {
      'lukas-reineke/indent-blankline.nvim',
      config = [[require('config.indentblankline')]]
  }

  -- LSP
  use {
      'neovim/nvim-lspconfig',
      config = [[ require('config.lsp.lspconfig') ]],
      requires = {
        {'williamboman/nvim-lsp-installer',
         config = [[ require('config.lsp.lsp_installer') ]]
        },
        {'onsails/lspkind-nvim',
        config = [[ require('config.lsp.lspkind') ]]
        },
        {'nvim-lua/lsp-status.nvim',
         config = [[ require('config.lsp.lspstatus') ]]
        },
      }
  }

  use { -- A completion plugin for neovim coded in Lua.
        'hrsh7th/nvim-cmp',
        requires = {
          "hrsh7th/cmp-nvim-lsp",           -- nvim-cmp source for neovim builtin LSP client
          "hrsh7th/cmp-nvim-lua",           -- nvim-cmp source for nvim lua
          "hrsh7th/cmp-buffer",             -- nvim-cmp source for buffer words.
          "hrsh7th/cmp-path",               -- nvim-cmp source for filesystem paths.
          "hrsh7th/cmp-calc",               -- nvim-cmp source for math calculation.
          "saadparwaiz1/cmp_luasnip",       -- luasnip completion source for nvim-cmp
        },
        config = [[ require('config.cmp') ]],
  }
  use { -- Snippet Engine for Neovim written in Lua.
        'L3MON4D3/LuaSnip',
        requires = {
          "rafamadriz/friendly-snippets",   -- Snippets collection for a set of different programming languages for faster development.
        },
        config = [[ require('config.luasnip') ]],
  }

  -- A lua powered greeter like vim-startify / dashboard-nvim
  use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = [[require('config.alpha')]]
  }

  -- Git
  use 'tpope/vim-fugitive'
  use { 
    { 
      'lewis6991/gitsigns.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = [[require('config.gitsigns')]]
    },
    { 'TimUntersberger/neogit',
      cmd = 'Neogit',
      config =  [[require('config.neogit')]]
    }
  }

  -- Telescope
  use {
      'nvim-telescope/telescope.nvim',
      config = [[require('config.telescope')]],
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme 
  use { 
        'folke/tokyonight.nvim',
        'navarasu/onedark.nvim',
  }

  -- Packer Bootstrap (Put this at the end after all plugins).
  if packer_bootstrap then
      require('packer').sync()
  end
end)
