return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
      auto_install = true,
			ensure_installed = { "lua", "javascript", "typescript", "css", "html", "python", "tmux", "vim", "vue" },
			highlight = { enabled = true },
			indent = { enabled = true },
		})
	end,
}
