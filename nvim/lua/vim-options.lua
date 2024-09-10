vim.g.mapleader = " "
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.updatetime = 250

vim.opt.inccommand = "split"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 17

vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
