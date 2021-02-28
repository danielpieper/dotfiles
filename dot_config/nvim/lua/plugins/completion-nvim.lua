local utils = require('utils')

-- Intelephense Hotfix, see https://github.com/nvim-lua/completion-nvim/issues/252#issuecomment-716048547
-- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
vim.g.completion_enable_snippet = "snippets.nvim"

vim.api.nvim_set_var('completion_matching_ignore_case', 1)
-- vim.api.nvim_set_var('completion_matching_smart_case', 1)

-- Disable sorting: this let's me decide the order by completion source
vim.api.nvim_set_var('completion_sorting', 'none') -- possible value: "length", "alphabet", "none"

vim.api.nvim_set_var('completion_matching_strategy_list', {"exact", "substring", "fuzzy"})
-- vim.api.nvim_set_var('completion_auto_change_source', 1)
-- vim.api.nvim_set_var('completion_timer_cycle', 200)

vim.api.nvim_set_var('completion_chain_complete_list', {
  default = {
    { complete_items = { 'lsp', 'snippet', 'path', 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } },
  },
})

utils.augroup(
  'completion-nvim',
  function ()
    vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])
  end
)

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. "c"

utils.map("i", "<Tab>", [[ pumvisible() ? "\<C-n>" : "\<Tab>" ]], {expr = true})
utils.map(
  "i",
  "<S-Tab>",
  [[ pumvisible() ? "\<C-p>" : "\<S-Tab>" ]],
  {expr = true}
)
