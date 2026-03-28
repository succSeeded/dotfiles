return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"clangd",
				"rust_analyzer",
				"pyright",
				"tinymist",
				"ts_ls",
				"stylua",
				"ruff"
			},
			automatic_installation = true,
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
	}
}
