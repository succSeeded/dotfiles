-- Things that will be done as soon as nvim starts. Mostly for plugin startup and bg removal rn.

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

		if client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
			vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			vim.keymap.set('i', '<C-Space>', function()
				vim.lsp.completion.get()
			end)
		end

		-- Auto-format ("lint") on save.
		-- Usually not needed if server supports "textDocument/willSaveWaitUntil".
		if not client:supports_method('textDocument/willSaveWaitUntil')
				and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
				buffer = ev.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end
	end,
})

-- remove background
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		-- No background in vim itself and statusline
		vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

		-- Italic comments
		local comments = vim.api.nvim_get_hl(0, { name = 'Comment' })
		vim.api.nvim_set_hl(0, 'Comment', vim.tbl_extend("force", comments, { italic = true }))
	end,
})
