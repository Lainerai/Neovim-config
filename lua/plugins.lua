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

  -- Adds indentation guides to all lines (including empty lines).
  use 'lukas-reineke/indent-blankline.nvim'

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

  -- Emmet
  use 'mattn/emmet-vim'

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
      config = function()
        require'alpha'.setup(require'alpha.themes.startify'.opts)
      end
  }

  -- Completion
  use 'onsails/lspkind-nvim'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
      'hrsh7th/cmp-nvim-lsp',
      { 'hrsh7th/cmp-path', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' },
      { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
    },
    config = [[require('config.cmp')]],
    event = 'InsertEnter *',
  }


   -- Git
  use 'tpope/vim-fugitive'
  use { 
      'lewis6991/gitsigns.nvim', 
      requires = 'nvim-lua/plenary.nvim',
      config = function() 
        require('gitsigns').setup() 
      end
  }
        
  -- A snazzy bufferline for Neovim.
  use {
      'akinsho/bufferline.nvim', 
      requires = {'kyazdani42/nvim-web-devicons'},
      config = function() 
        require('bufferline').setup{}
      end
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
