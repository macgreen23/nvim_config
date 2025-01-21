return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup()

		-- set keymaps
		local harpoon = require("harpoon")
		local keymap = vim.keymap

		keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon add to list" })
		keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon toggle quick menu" })

		keymap.set("n", "<C-j>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon select 1" })
		keymap.set("n", "<C-k>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon select 2" })
		keymap.set("n", "<C-k>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon select 3" })
		keymap.set("n", "<C-l>", function()
			harpoon:list():select(4)
		end, { desc = " Harpoon select 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		keymap.set("n", "<C-S-,>", function()
			harpoon:list():prev()
		end, { desc = "Harpoon previous in list" })
		keymap.set("n", "<C-S-.>", function()
			harpoon:list():next()
		end, { desc = "Harpoon next in list" })
	end,
}
