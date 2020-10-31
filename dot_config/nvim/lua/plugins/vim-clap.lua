local map = require("utils").map
local g = vim.g

map("n", "<A-p>", ":Clap files<CR>", {silent = true})
map("n", "<C-p>", ":Clap gfiles<CR>", {silent = true})
map("n", "<C-SPACE>", ":Clap buffers<CR>", {silent = true})
map("n", "<C-t>", ":Clap tmuxinator<CR>", {silent = true})
-- Conflicts with move to right split
-- map("n", "<C-l>", ":Clap lines<CR>", {silent = true})
map("n", "<C-f>", ":Clap grep<CR>", {silent = true})
map("n", "<BS>", ":Clap command_history<CR>", {silent = true})
map("n", "<F4>", ":Clap git_diff_files<CR>", {silent = true})

g.clap_theme = 'atom_dark'
-- g.clap_theme = 'solarized_dark'
-- g.clap_theme = 'material_design_dark'
g.clap_layout = { relative = 'editor' }

-- vim.api.nvim_command([[
-- let g:clap_provider_tmux = {
-- \      'source': split(system('tmux list-sessions -F "#{session_name}"'), '\n'),
-- \      'sink': { selected -> execute('silent !tmux switch-client -t ' . selected, '')},
-- \}
-- ]])

vim.api.nvim_command([[
let g:clap_provider_tmuxinator = { 'source': split(system('tmuxinator list | tail -n +2 | tr -s "[:space:]" "\n"'), '\n'), 'sink': { selected -> execute('silent !tmuxinator ' . selected, '')} }
]])
