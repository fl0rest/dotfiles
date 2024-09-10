vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file list" })

vim.g.have_nerd_font = true
--Splitting options
vim.opt.splitright = true
vim.opt.splitbelow = true

--Esc to clear highlights and disable arrow keys
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

--Window switching
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Move focus to the upper window" })

--Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--Center jumping
vim.keymap.set("n", "C-d", "C-dzz")
vim.keymap.set("n", "C-u", "C-uzz")

