--[[packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

]]--

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                            , branch = '0.1.x',
  	requires = { 
        {'nvim-lua/plenary.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-telescope/telescope.nvim'},
        {'nvim-telescope/telescope-media-files.nvim'},
		{"nvim-telescope/telescope-file-browser.nvim"},
    }
	}

  use { "catppuccin/nvim", as = "catppuccin" } --theme
  use { "sainnhe/gruvbox-material" }

  use { "brenoprata10/nvim-highlight-colors" } --#434
  use { "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"}} --hilights
  use { "L3MON4D3/LuaSnip", 
        requires = {
            use { "rafamadriz/friendly-snippets" },
            use{"saadparwaiz1/cmp_luasnip"},

            } --auto complite
        }
  use { "hrsh7th/nvim-cmp",
        requires = {
            use{"neovim/nvim-lspconfig"},
            use{"hrsh7th/cmp-nvim-lsp"},
            use{"hrsh7th/cmp-buffer"},
            use{"hrsh7th/cmp-path"},
            use{"hrsh7th/cmp-cmdline"},
            use{"hrsh7th/nvim-cmp"},
	    
            }
      } -- auto complite menu
  use { "mbbill/undotree" } -- undo tree

use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup(require"firstconfig.plugins.dashboard")
  end
}
use "nvim-tree/nvim-web-devicons" -- icons (nerd fonts required)  
use "tpope/vim-fugitive" 
end)
