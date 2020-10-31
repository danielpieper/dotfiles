local map = require("utils").map

vim.api.nvim_set_var('lua_tree_indent_markers', 1)
vim.api.nvim_set_var('lua_tree_bindings', {
  edit = {'<CR>', 'o', 'l'},
})

vim.api.nvim_set_var('lua_tree_icons', {
  default = '',
  symlink = '',
  git = {
    unstaged = "✚",
    staged = "✚",
    unmerged = "≠",
    renamed = "≫",
    untracked = "★"
  },
})

vim.api.nvim_set_var('lua_tree_side', 'right')
vim.api.nvim_set_var('lua_tree_width', 40)
vim.api.nvim_set_var('lua_tree_ignore', { '.git', 'node_modules', '.cache' })
vim.api.nvim_set_var('lua_tree_auto_close', 1)
vim.api.nvim_set_var('lua_tree_quit_on_open', 1)
vim.api.nvim_set_var('lua_tree_git_hl', 1)

map('n', '<F3>', ':LuaTreeToggle<CR>', { silent = true })
map('n', '<Leader><F3>', ':LuaTreeFindFile<CR>', { silent = true })
