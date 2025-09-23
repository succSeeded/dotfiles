vim.lsp.enable({
	"lua_ls",
	"clangd",
	"rust-analyzer",
	"pyright",
})

vim.diagnostic.config({
	virtual_lines = true,
	virtual_text = false
})
