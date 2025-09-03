return {
	-- Cool editing prompts
	{
		"stevearc/dressing.nvim",
		lazy = false,
		opts = {},
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
				"css-lsp",
				"html-lsp",
				"pyright",
				"prettier",
				"stylua",
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
		ft = "markdown",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		init = function()
			local g = vim.g
			g.mkdp_auto_start = 0
			g.mkdp_auto_close = 1
			g.mkdp_refresh_slow = 0
			g.mkdp_command_for_global = 0
			g.mkdp_open_to_the_world = 0
			g.mkdp_open_ip = ""
			g.mkdp_echo_preview_url = 0
			g.mkdp_browserfunc = ""
			g.mkdp_filetypes = { "markdown" }
			g.mkdp_page_title = "${name}.md"
		end,
	},
}
