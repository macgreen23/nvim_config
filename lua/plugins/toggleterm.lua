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
}
