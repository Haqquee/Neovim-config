local options = {
	autoindent = true,
	smartindent = true,
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	incsearch = true,
	hlsearch = false,
	ignorecase = true,
	smartcase = true

}

for option, value in pairs(options) do
	vim.opt[option] = value
end
