local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
indent_blankline.setup({
	char = "▏",
	use_treesitter = true,
	show_current_context = true,
	show_current_context_start = true,
	space_char_blanklinne = " ",
	buftype_exclude = { "terminal", "nofile" },
	filetype_exclude = {
		"help",
		"packer",
		"NvimTree",
	},
})
