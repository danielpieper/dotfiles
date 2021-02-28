local utils = require("utils")

utils.augroup(
  'vim-dadbod-completion',
  function ()
    vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])
    vim.cmd([[autocmd FileType sql let g:completion_trigger_character = ['.', '"', '`', '['] ]])
  end
)

vim.api.nvim_set_var('completion_chain_complete_list', vim.tbl_extend(
  'keep',
  vim.g.completion_chain_complete_list or {},
  {
    sql = {
      { complete_items = { 'vim-dadbod-completion', 'buffers' } },
    },
  }
))
