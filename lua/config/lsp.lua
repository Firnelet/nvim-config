vim.lsp.enable({
	'lua_ls',
	'ts_ls',
	'gopls',
	'gdscript',
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			table.insert(chars, ',')
			table.insert(chars, ' ')
			client.server_capabilities.completionProvider.triggerCharacters = chars

			vim.lsp.completion.enable(true, client.id, ev.buf, {
				autotrigger = true
			})
		end
	end,
})

vim.o.completeopt = "menuone,popup,noselect,preview"

vim.diagnostic.config({
	-- virtual_text = { current_line = false }
	virtual_text = { virt_text = true }
})
