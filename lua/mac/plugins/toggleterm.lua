return {
	"akinsho/toggleterm.nvim",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			winbar = {
				enabled = true,
				name_formatter = function(term)
					return term.name
				end,
			},
		})
		-- Set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>y", "<cmd>ToggleTerm<CR>", { desc = "Toggles Terminal" })
		keymap.set("t", "<esc>", [[<C-\><C-n>]])
		keymap.set("t", "jk", [[<C-\><C-n>]])
		keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
		keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
		keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
		keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
		keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
	end,
}
