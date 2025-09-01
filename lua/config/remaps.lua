
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tpv", function()
	vim.cmd.tabnew()
	vim.cmd.Ex()
end)
vim.keymap.set("n", "<leader>tt", function()
	vim.cmd.tabnew()
	vim.cmd.term()
	vim.cmd.startinsert()
end)
vim.keymap.set("n", "<leader>pt", function()
	vim.cmd.vs()
	vim.cmd.term()
	vim.cmd.startinsert()
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


