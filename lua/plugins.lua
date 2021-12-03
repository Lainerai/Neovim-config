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

  -- Nvim Treesitter configurations and abstraction layer
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- Statusline
  use {
      'famiu/feline.nvim',
      config = function()
        require('feline').setup()
      end
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
            config = function ()
        require('config.lsp.python')
        require('config.lsp.html')
        require('config.lsp.emmet')
      end
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
  use {
      'nvim-telescope/telescope-frecency.nvim',
       config = function()
           require'telescope'.load_extension('frecency')
       end,
       requires = {'tami5/sqlite.lua'}
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
