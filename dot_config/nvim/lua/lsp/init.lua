-- local lsp_status = require('lsp-status')
local diagnostic = require('diagnostic')
local completion = require('completion')
local nvim_lsp = require('nvim_lsp')
local configs = require('nvim_lsp/configs')
local util = require('nvim_lsp/util')

local on_attach = function(client, bufnr)
  -- Set the omnifunc for this buffer.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Keybindings for LSPs
  local opts = { noremap=true, silent=true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>g0", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", opts)

  -- lsp_status.on_attach(client, bufnr)
  diagnostic.on_attach(client, bufnr)
  completion.on_attach(client, bufnr)
end
-- lsp_status.register_progress()
-- lsp_status.config({
--   status_symbol = '',
--   indicator_errors = 'e',
--   indicator_warnings = 'w',
--   indicator_info = 'i',
--   indicator_hint = 'h',
--   indicator_ok = 'ok',
-- })

nvim_lsp.intelephense.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
  -- init_options = {
  --   licenceKey = get from 1password
  -- },
}

nvim_lsp.jsonls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.clangd.setup{
  -- callbacks = lsp_status.extensions.clangd.setup(),
  init_options = {
    clangdFileStatus = true
  },
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.pyls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.sumneko_lua.setup{
  on_attach = on_attach,
}

nvim_lsp.vimls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.tsserver.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.html.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.cssls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities,
  settings = {
    css = {
      validate = false
    },
    less = {
      validate = true
    },
    scss = {
      validate = true
    }
  }
}

nvim_lsp.rust_analyzer.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.elixirls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}

nvim_lsp.gopls.setup{
  on_attach = on_attach,
  -- capabilities = lsp_status.capabilities
}
