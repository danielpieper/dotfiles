local telescope = require('telescope')
local actions = require('telescope.actions')
local map = require("utils").map

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["œ"] = actions.send_selected_to_qflist + actions.open_qflist, -- <M-q> on darwin...
      },
      n = {
        ["œ"] = actions.send_selected_to_qflist + actions.open_qflist, -- <M-q> on darwin...
      },
    },
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
map("n", "<M-p>", ":lua require('telescope.builtin').find_files{}<CR>", {silent = true})
map("n", "π", ":lua require('telescope.builtin').find_files{}<CR>", {silent = true}) -- find files on darwin...
map("n", "<BS>", ":lua require('telescope.builtin').command_history{}<CR>", {silent = true})
map("n", "<C-f>", ":lua require('telescope.builtin').live_grep{}<CR>", {silent = true})
map("n", "<C-SPACE>", ":lua require('telescope.builtin').buffers{show_all_buffers = true}<CR>", {silent = true}) -- Show unloaded buffers aswell
map("n", "<Leader>o", ":lua require('telescope.builtin').lsp_document_symbols{}<CR>", {silent = true})
map("n", "<Leader>O", ":lua require('telescope.builtin').lsp_references{}<CR>", {silent = true})
map("n", "<Leader>ff", ":lua require('telescope.builtin').builtin{}<CR>", {silent = true})

require('telescope').load_extension('tmuxinator')
map("n", "<C-t>", ":lua require('telescope').extensions.tmuxinator.projects(require('telescope.themes').get_dropdown({}))<CR>", {silent = true})

