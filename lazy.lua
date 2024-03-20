require("lazy").setup({
	"catppuccin/nvim",
	"sainnhe/gruvbox-material",
	"brenoprata10/nvim-highlight-colors",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip"
		}
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		}
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		}
	},
	"mbbill/undotree",
	{
		"startup-nvim/startup.nvim",
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-lua/popup.nvim',
		}

	},
	"startup-nvim/startup.nvim",
	"tpope/vim-fugitive",
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- icons (nerd fonts required)  
			'nvim-lua/plenary.nvim',
			"MunifTanjim/nui.nvim",
			'nvim-telescope/telescope.nvim',
			'nvim-telescope/telescope-media-files.nvim',
			"nvim-telescope/telescope-file-browser.nvim",
		}
	}
})
