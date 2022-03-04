local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'folke/tokyonight.nvim'
  use 'folke/zen-mode.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
	'kyazdani42/nvim-web-devicons', --have to remove this from here
      },
      config = function() require'nvim-tree'.setup {} end
  }
  use 'hrsh7th/nvim-compe'
  use 'simrat39/symbols-outline.nvim'
  use 'windwp/nvim-autopairs' -- functional, need adjustments
  use {'akinsho/toggleterm.nvim'} 
  use 'phaazon/hop.nvim' --Fucntional, need adjustments
  use 'folke/todo-comments.nvim' -- functional, need adjustments
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true } --have to remove this from here
  }
  use'akinsho/bufferline.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use "williamboman/nvim-lsp-installer"


  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim' -- config file left

  -- Telescope
  use "nvim-telescope/telescope.nvim" -- config file left


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


