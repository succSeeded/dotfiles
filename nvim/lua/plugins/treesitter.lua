return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		branch = 'master',
		lazy = false,
		build = ":TSUpdate",
		ensure_installed = {
			"c",
			"cpp",
			"rust",
			"python",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"css",
			"html",
			"javascript",
			"typescript"
		},
		highlight = { enable = true },
		indent = { enable = true }
	}
}
