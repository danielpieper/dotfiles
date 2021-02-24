local map = require("utils").map

vim.api.nvim_set_var('nvim_tree_bindings', {
  ["l"] = ":lua require('nvim-tree').on_keypress('edit')<CR>",
})

vim.api.nvim_set_var('nvim_tree_side', 'right')
vim.api.nvim_set_var('nvim_tree_width', 60)
vim.api.nvim_set_var('nvim_tree_ignore', { '.git', 'node_modules', '.cache' })
vim.api.nvim_set_var('nvim_tree_auto_close', 1)
vim.api.nvim_set_var('nvim_tree_quit_on_open', 1)

vim.api.nvim_set_var('nvim_tree_icons', {
  default = '',
  symlink = '',
})

map('n', '<F3>', ':NvimTreeToggle<CR>', { silent = true })
map('n', '<Leader><F3>', ':NvimTreeFindFile<CR>', { silent = true })
