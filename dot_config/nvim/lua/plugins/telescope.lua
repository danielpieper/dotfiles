local telescope = require('telescope')
local map = require("utils").map
local pickers = require('telescope.pickers')
local actions = require('telescope.actions')
local finders = require('telescope.finders')
local sorters = require('telescope.sorters')
local utils = require('telescope.utils')
local g = vim.g

telescope.setup{
  defaults = {
    -- winblend = 20;
    width = 0.8;
    show_line = false;
    -- prompt_prefix = 'TS Symbols>';
    prompt_title = '';
    results_title = '';
    preview_title = '';
    -- borderchars = {
    --   prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    --   results = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    --   preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    -- };
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

map("n", "<C-p>", ":lua require('telescope.builtin').git_files{}<CR>", {silent = true})
map("n", "<A-p>", ":lua require('telescope.builtin').find_files{}<CR>", {silent = true})
map("n", "<BS>", ":lua require('telescope.builtin').command_history{}<CR>", {silent = true})
map("n", "<C-f>", ":lua require('telescope.builtin').live_grep{}<CR>", {silent = true})
map("n", "<C-SPACE>", ":lua require('telescope.builtin').buffers{show_all_buffers = false}<CR>", {silent = true}) -- Show unloaded buffers aswell
map("n", "<Leader>o", ":lua require('telescope.builtin').lsp_document_symbols{}<CR>", {silent = true})
map("n", "<Leader>O", ":lua require('telescope.builtin').lsp_references{}<CR>", {silent = true})
map("n", "<C-t>", ":lua tmuxinator_sessions{}<CR>", {silent = true})


function tmuxinator_sessions(opts)
  local output = utils.get_os_command_output({ 'tmuxinator', 'list' })
  local results = {}
  for _, v in ipairs(output) do
    -- strip title:
    v = string.gsub(v, "tmuxinator projects:", "")
    for item in string.gmatch(v, "([^%s]+)") do
      table.insert(results, item)
    end
  end

  pickers.new(opts, {
    prompt_title = 'Tmuxinator Sessions',
    finder = finders.new_table(results),
    sorter = sorters.get_generic_fuzzy_sorter(),
    attach_mappings = function(_, map)
      map('i', '<CR>', function(prompt_bufnr)
        local selection = actions.get_selected_entry(prompt_bufnr)
        actions.close(prompt_bufnr)
        os.execute('tmuxinator ' .. selection.value)
      end)
      return true
    end,
  }):find()
end
