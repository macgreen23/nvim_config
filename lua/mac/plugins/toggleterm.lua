return {
	"akinsho/toggleterm.nvim",
	opts = {
		winbar = {
			enabled = true,
			name_formatter = function(term)
				return term.name
			end,
		},
	},
	config = function()
		-- Set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>y", "<cmd>ToggleTerm<CR>", { desc = "Toggles Terminal" })
	end,
}
