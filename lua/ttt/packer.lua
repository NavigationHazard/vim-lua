-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use ('DaikyXendo/nvim-material-icon')
use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
})
use('rebelot/kanagawa.nvim')

use('morhetz/gruvbox')
use('NavigationHazard/base16-vim')
use('aktersnurra/no-clown-fiesta.nvim')
use ( 'projekt0n/github-nvim-theme' )
use ('kvrohit/rasmus.nvim')
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
use('drewtempelmeyer/palenight.vim')
use( 'folke/tokyonight.nvim')
use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('theprimeagen/harpoon')
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}
-- Lua
  if packer_bootstrap then
    require('packer').sync()
  end
end)
