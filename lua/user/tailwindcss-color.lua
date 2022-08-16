local status_ok, tailwindcss_color = pcall(require, "tailwindcss_colors")
if not status_ok then
	return
end

tailwindcss_color.setup({})
