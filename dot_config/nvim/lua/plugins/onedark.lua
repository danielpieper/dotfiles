local g = vim.g 
local o = vim.o

g.onedark_color_overrides = {
  black = { gui = '#1D1F21', cterm = '235', cterm16 = '0' },
  cursor_grey = { gui = '#1f2123', cterm = '170', cterm16 = '5' },
}

g.onedark_terminal_italics = true

o.background = "dark" 
o.termguicolors = true
o.syntax = "on"

vim.api.nvim_command('colorscheme onedark')
