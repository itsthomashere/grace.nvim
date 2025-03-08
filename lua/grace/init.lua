local M = {}

function M.setup(options)
	require("grace.colorscheme")
	if options and options.trasparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", ctermbg = "none" })
	end
end

return M
