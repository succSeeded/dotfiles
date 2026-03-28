return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = 'master',
	build = ":TSUpdate",
	config = function()
		require 'nvim-treesitter.configs'.setup({
			ensure_installed = {
				"c",
				"bash",
				"lua",
				"markdown",
				"python",
				"query",
				"rust",
				"vim"
			},
			auto_install = true,
			additional_vim_regex_highlighting = true,
			highlight = { enable = true },
			indent = { enable = true }
		})
	end
}
