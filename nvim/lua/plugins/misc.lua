return {
	-- comments etc.
	{
		'nvim-mini/mini.nvim',
		version = false,
		config = function()
			require('mini.pick').setup()
			require('mini.comment').setup()
			require('mini.completion').setup()
			require('mini.move').setup()
			require('mini.clue').setup()
			require('mini.git').setup()
			require('mini.surround').setup()
			require('mini.fuzzy').setup()
		end,
	},

	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		init = function()
			-- VimTeX configuration goes here, e.g.
			vim.g.vimtex_view_method = "zathura"
		end
	},

	{
		'chomosuke/typst-preview.nvim',
		opts = {}
	},

	-- Custom statusline
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts =  {
				options = {
					theme = "OceanicNext",
					globalstatus = false,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "filename" },
					lualine_c = { "diagnostics" },
					lualine_x = { "diff", "spaces", "filetype" },
					lualine_y = { "location" },
					lualine_z = { "progress" },
				},
			}
	},
}
