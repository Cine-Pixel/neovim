vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 10

vim.opt.clipboard = "unnamedplus"

if vim.fn.has('wsl') == 1 then
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = vim.api.nvim_create_augroup('Yank', { clear = true }),
        callback = function()
            vim.fn.system('clip.exe', vim.fn.getreg('"'))
        end,
    })
end

