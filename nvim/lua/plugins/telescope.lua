return {
  -- If your opts uses a function call ex: require*, then make opts spec a function
  -- Then modify the opts arg
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

     -- or 
     -- table.insert(conf.defaults.mappings.i, your table)
      return conf
    end,
  },
  { 
    'nvim-telescope/telescope-fzf-native.nvim', 
    build = 'make' 
  }
}
