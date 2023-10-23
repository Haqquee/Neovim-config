local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	-- Completion
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-path")
  use("hrsh7th/nvim-cmp")
	-- Snippets
	use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
	-- Language server
  use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("williamboman/nvim-lsp-installer")
	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
	-- Syntax parser
  use("nvim-treesitter/nvim-treesitter")
	use('nvim-treesitter/playground')
	-- Utilities
  use("windwp/nvim-autopairs")
  use("norcalli/nvim-colorizer.lua")
  use("lewis6991/gitsigns.nvim")
	-- Dependencies
  use("nvim-lua/plenary.nvim")
  use("nvim-tree/nvim-web-devicons")
  use("MunifTanjim/nui.nvim")
	-- File browser
  use("nvim-telescope/telescope.nvim")
  -- Interface
  use("akinsho/bufferline.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-lualine/lualine.nvim")
  -- Themes and Stuff
  use("xiyaowong/transparent.nvim")
  use("nyoom-engineering/oxocarbon.nvim")
  use("bluz71/vim-nightfly-colors")
  use("ray-x/aurora")
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
