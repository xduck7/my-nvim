print(" ")

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Other
vim.opt.scrolloff = 12
vim.opt.sidescrolloff= 8
vim.opt.wrap = true 
vim.opt.termguicolors = true

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = " ",
	eob = " ",
	msgsep = "ˉ",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸"
}
