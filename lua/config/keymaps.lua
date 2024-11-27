vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

