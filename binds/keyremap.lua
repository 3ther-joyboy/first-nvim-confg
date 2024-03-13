vim.g.mapleader = " "
vim.keymap.set("n","<leader>q",vim.cmd.wq)
vim.keymap.set("n","<leader>Q",vim.cmd.exit)

vim.keymap.set("n","<leader>w",vim.cmd.w)
vim.keymap.set("n","<leader>v",vim.cmd.vsplit)
vim.keymap.set("n","<leader>h",vim.cmd.split)

vim.keymap.set("n","<C-l>",":Startup display<CR>")
vim.keymap.set("n","<leader>tt",":vsplit<CR>:terminal<CR>i") 
