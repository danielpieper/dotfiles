local map = require("utils").map

require("trouble").setup {
  -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

map("n", "<F2>", ":LspTroubleToggle<CR>", {silent = true})
-- map("n", "<Leader>cw", "<cmd>LspTroubleToggle lsp_workspace_diagnostics<CR>", {silent = true})
map("n", "<Leader><F2>", ":LspTroubleToggle lsp_document_diagnostics<CR>", {silent = true})
map("n", "<Leader><Leader><F2>", ":LspTroubleToggle loclist<CR>", {silent = true})
-- map("n", "<Leader>gr", ":LspTrouble lsp_references<CR>", {silent = true})
