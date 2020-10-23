local map = require("utils").map
local g = vim.g 

g.NERDTreeWinPos = 'right'
g.NERDTreeQuitOnOpen = 1
g.NERDTreeShowHidden = 1
g.NERDTreeMinimalUI = 1

map("n", "<F3>", ":NERDTreeToggle<CR>", {silent = true})
map("n", "<Leader><F3>", ":NERDTreeFind<CR>", {silent = true})
