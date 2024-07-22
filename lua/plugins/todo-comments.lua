return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
	config = function()
		require("todo-comments").setup()
	end,
}
