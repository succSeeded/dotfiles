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
}
