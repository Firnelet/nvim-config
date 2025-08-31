
require "config.lazy"
require "config.remaps"

vim.lsp.config('lua_ls', {
	cmd = {"C:\\Users\\firnelet!\\programs\\language-servers\\luals\\bin\\lua-language-server.exe"},
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')

