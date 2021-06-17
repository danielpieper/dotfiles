local map = require("utils").wkmap
local tree_cb = require('nvim-tree.config').nvim_tree_callback

vim.api.nvim_set_var('nvim_tree_bindings', {
  ["l"] = tree_cb("edit"),
})

vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_width = 60
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1

vim.api.nvim_set_var('nvim_tree_icons', {
  default = '',
  symlink = '',
})

map('n', '<F3>', ':NvimTreeToggle<CR>', 'Open Files Drawer', { silent = true })
map('n', '<Leader><F3>', ':NvimTreeFindFile<CR>', 'Open Files Drawer at current file', { silent = true })
