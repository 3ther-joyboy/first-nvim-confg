require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}

})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
	automatic_installation = true,
})

require("lspconfig").lua_ls.setup {}
