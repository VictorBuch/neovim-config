local colorscheme = "catppuccin-macchiato"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
local status2_ok, _ = pcall(vim.cmd, "highlight Normal guibg=NONE ctermbg=NONE")
if not status_ok then
	return
end

if not status2_ok then
	return
end
