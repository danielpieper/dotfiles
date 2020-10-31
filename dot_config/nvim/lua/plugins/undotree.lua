local map = require("utils").map

vim.g.undotree_SplitWidth = 45

map("n", "<F5>", ":UndotreeToggle<CR>", {silent = true})
