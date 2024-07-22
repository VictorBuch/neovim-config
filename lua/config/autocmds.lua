-- highlight yanked text
vim.api.nvim_create_augroup('HighlightYank', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'HighlightYank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 200 })
  end
})

-- Remove empty white spaces without moving the cursor
local function trim_trailing_whitespace()
	local pos = vim.api.nvim_win_get_cursor(0) -- Get the current cursor position
	vim.cmd([[ %s/\s\+$//e ]]) -- Remove trailing whitespace
	vim.api.nvim_win_set_cursor(0, pos) -- Restore the cursor position
end

vim.api.nvim_create_augroup("TrimTrailingWhitespace", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
	group = "TrimTrailingWhitespace",
	pattern = "*",
	callback = trim_trailing_whitespace,
})
