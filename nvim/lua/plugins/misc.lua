return {
	-- Cool editing prompts
	{
		"stevearc/dressing.nvim",
		lazy = false,
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"mason-org/mason.nvim",
		dependencies = { "mason-org/mason-registry" },
		opts = {
			ensure_installed = {
				"black",
				"clangd",
				"clang-format",
				"codelldb",
				"cpplint",
				"css-lsp",
				"html-lsp",
				"pyright",
				"prettier",
				"stylua",
				"lua-language-server",
				"pylint",
				"prettypst",
				"tinymist",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "OXY2DEV/markview.nvim" },
		lazy = false,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
}
