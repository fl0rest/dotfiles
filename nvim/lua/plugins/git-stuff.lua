return {
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" }),
	},
--	{
--		"tpope/vim-fugitive",
--		config = function()
--			vim.keymap.set("n", "<leader>gp", function()
--				vim.cmd.Git("push")
--			end, { desc = "Git push", buffer = bufnr, remap = false })
--			vim.keymap.set("n", "<leader>gP", function()
--				vim.cmd.Git({ "pull", "--rebase" })
--			end, { desc = "Git pull", buffer = bufnr, remap = false })
--			vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git" })
--		end,
--	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
		vim.keymap.set("n", "<leader>h", ":Gitsigns preview_hunk<CR>", {}),
		vim.keymap.set("n", "<leader>tg", ":Gitsigns toggle_current_line_blame<CR>",
			{ desc = "Toggle inline blame" }),
	},
}
