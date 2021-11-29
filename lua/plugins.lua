vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()

  -- Packer can manage itself.
  use 'wbthomason/packer.nvim'

  -- File manager for Neovim, better than NERDtree.
  use 'ms-jpq/chadtree'

  -- The misssing motion for vim.
  use 'justinmk/vim-sneak'

  -- Emmet for nvim.
  use 'mattn/emmet-vim'

  -- Provides a single command that deletes the current buffer and handles the current window in a smart way.
  use 'mhinz/vim-sayonara' 

  -- cs'"
  use 'tpope/vim-surround'

  -- Colorscheme Tokyonight.
  use 'folke/tokyonight.nvim'

  -- Commentary.
  use 'b3nj5m1n/kommentary'

  -- Helpers for UNIX.
  use 'tpope/vim-eunuch'

  -- Adds indentation guides to all lines (including empty lines).
  use {
      'lukas-reineke/indent-blankline.nvim',
      config = [[require('config.indentblankline')]]
  }

  -- Nvim Treesitter configurations and abstraction layer
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- LSP
  use {
      'neovim/nvim-lspconfig',
      config = function ()
        require('lsp.python')
        require('lsp.html')
      end
  }
  
  -- a lua powered greeter like vim-startify / dashboard-nvim
  use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = [[require('config.alpha')]]
  }

  -- Completion
  use {
      'ms-jpq/coq_nvim',
      branch = 'coq',
      config = [[require('config.coq')]]
  }
  -- use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

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

  -- A snazzy bufferline for Neovim.
  use {
      'akinsho/bufferline.nvim', 
      requires = {'kyazdani42/nvim-web-devicons'},
      config = function() 
        require('bufferline').setup{}
      end
  }

  -- Telescope
  use {
      'nvim-telescope/telescope.nvim',
      config = [[require('config.telescope')]],
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      "nvim-telescope/telescope-frecency.nvim",
       config = function()
           require"telescope".load_extension("frecency")
       end,
       requires = {"tami5/sqlite.lua"}
  }

  -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
  use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
  	  config = function() 
        require('lualine').setup{
        options = {section_separators = '', component_separators = ''}}
      end
  }

  -- Packer Bootstrap (Put this at the end after all plugins).
  if packer_bootstrap then
      require('packer').sync()
  end
end)
