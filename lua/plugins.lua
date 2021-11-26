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

  -- Allows for declaratively configuring, launching, and initializing language servers you have installed on your system.
  use 'neovim/nvim-lspconfig'

  -- Colorscheme Tokyonight.
  use 'folke/tokyonight.nvim'

  -- Commentary.
  use 'b3nj5m1n/kommentary'

  -- A snazzy bufferline for Neovim.
  use {
        'akinsho/bufferline.nvim', 
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require('bufferline').setup{} end
  }

  -- Helpers for UNIX.
  use 'tpope/vim-eunuch'


  -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
  use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    	  config = function() require('lualine').setup{
          options = {section_separators = '', component_separators = ''}
        } end
  }


  -- Packer Bootstrap (Put this at the end after all plugins).
  if packer_bootstrap then
      require('packer').sync()
  end
end)
