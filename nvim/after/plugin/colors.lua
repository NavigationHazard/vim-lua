function ColorMyPencils(color)
	color = color or  "base16-black-metal-ebn"
--[[color = color or "base16-black-metal-bathory" or "base16-black-metal-mayhem" or "base16-brushtrees" or "base16-gruvbox-dark-pale" or "base16-tokyo-night-dark"or "base16-tokyo-night-dark" or "base16-rose-pine"
]]--
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal" , {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat" , {bg = "none"})
end

ColorMyPencils()
