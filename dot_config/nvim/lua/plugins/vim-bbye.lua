local map = require("utils").map

map('n', '<Leader>q', ":Bdelete<CR>", {silent = true})
map('n', '<Leader>Q', ":Bwipeout<CR>", {silent = true})
