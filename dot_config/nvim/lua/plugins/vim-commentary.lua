local map = require("utils").map

map('n', '<C-_>', ':Commentary<CR>', {silent = true})
map('v', '<C-_>', ':Commentary<CR>', {silent = true})

vim.api.nvim_command('autocmd FileType terraform setlocal commentstring=#%s')
vim.api.nvim_command('autocmd FileType yaml setlocal commentstring=#%s')
vim.api.nvim_command('autocmd FileType lua setlocal commentstring=--%s')
