local map = require("utils").map

-- Save file
map("n", "<CR>", ":wa<CR>", {silent = true})

-- Better indenting
map("v", "<", "<gv", {})
map("v", ">", ">gv", {})

-- clear all the highlighted text from the previous search
map("n", "<F2>", ":noh<CR>", {silent = true})

-- Easier Moving between splits
map("n", "<C-J>", "<C-W><C-J>", {})
map("n", "<C-K>", "<C-W><C-K>", {})
map("n", "<C-L>", "<C-W><C-L>", {})
map("n", "<C-H>", "<C-W><C-H>", {})

-- Split
map("n", "<Leader>x", ":split<CR>", {silent = true})
map("n", "<Leader>v", ":vsplit<CR>", {silent = true})

-- Make `Y` work from the cursor to the end of line
map("n", "Y", "y$", {})

-- Resize splits
map("n", "<Up>", ":exe 'resize ' . (winheight(0) * 3/2)<CR>", {silent = true})
map("n", "<Down>", ":exe 'resize ' . (winheight(0) * 2/3)<CR>", {silent = true})
map("n", "<Right>", ":exe 'vertical resize ' . (winwidth(0) * 3/2)<CR>", {silent = true})
map("n", "<Left>", ":exe 'vertical resize ' . (winwidth(0) * 2/3)<CR>", {silent = true})
