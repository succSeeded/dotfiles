return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "c", "cpp", "lua", "latex", "markdown", "python", "rust", "typst" })
	end,
}
