local telescope = require('telescope')
local map = require("utils").map
local g = vim.g

telescope.setup{
  defaults = {
    -- Example:
    shorten_path = true -- currently the default value is true
  }
}

-- local dropdown_theme = require('telescope.themes').get_dropdown({
--   results_height = 20;
--   winblend = 20;
--   width = 0.8;
--   prompt_title = '';
--   prompt_prefix = 'Files>';
--   previewer = false;
--   borderchars = {
--     prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
--     results = {' ', '▐', '▄', '▌', '▌', '▐', '▟', '▙' };
--     preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
--   };
-- })

-- local full_theme = {
--   winblend = 20;
--   width = 0.8;
--   show_line = false;
--   prompt_prefix = 'TS Symbols>';
--   prompt_title = '';
--   results_title = '';
--   preview_title = '';
--   borderchars = {
--     prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
--     results = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
--     preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
--   };
-- }

map("n", "<C-p>", ":lua require('telescope.builtin').git_files{}<CR>", {silent = true})
map("n", "<A-p>", ":lua require('telescope.builtin').find_files{}<CR>", {silent = true})
map("n", "<BS>", ":lua require('telescope.builtin').command_history{}<CR>", {silent = true})
map("n", "<C-f>", ":lua require('telescope.builtin').live_grep{}<CR>", {silent = true})
map("n", "<C-SPACE>", ":lua require('telescope.builtin').buffers{show_all_buffers = false}<CR>", {silent = true}) -- Show unloaded buffers aswell
map("n", "<F5>", ":lua require('telescope.builtin').lsp_document_symbols{}<CR>", {silent = true})
map("n", "<F6>", ":lua require('telescope.builtin').lsp_references{}<CR>", {silent = true})


-- function my_custom_picker(results)
--   pickers.new(opts, {
--     prompt_title = 'Custom Picker',
--     finder = finders.new_table(results),
--     sorter = sorters.fuzzy_with_index_bias(),
--     attach_mappings = function(_, map)
--       -- Map "<CR>" in insert mode to the funciton, actions.set_command_line
--       map('i', '<CR>', actions.set_command_line)

--       return true
--     end,
--   }):find()
-- end

-- map("n", "<C-t>", ":Clap tmuxinator<CR>", {silent = true})
-- vim.api.nvim_command([[
-- let g:clap_provider_tmuxinator = { 'source': split(system('tmuxinator list | tail -n +2 | tr -s "[:space:]" "\n"'), '\n'), 'sink': { selected -> execute('silent !tmuxinator ' . selected, '')} }
-- ]])
