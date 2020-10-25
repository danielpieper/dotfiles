local map = require("utils").map
local g = vim.g
local o = vim.o

o.showmode = false -- Hide mode as it's provided by the plugin
o.laststatus = 2 -- Show status line
o.showtabline = 2  -- Show tabline

g.lightline = {
  colorscheme = 'arcdark',
  active = {
    left = { 
      { 'mode', 'paste' },
      { 'gitbranch', 'readonly', 'relativepath', 'modified', 'cocstatus', 'currentfunction' },
    }
  },
  inactive = {
    left = { { 'relativepath' } },
    right = { { 'lineinfo' }, { 'percent' } },
  },
  tab = {
    active = { 'tabnum' },
    inactive = { 'tabnum' },
  },
  component = {
    lineinfo = ' %3l:%-2v',
  },
  component_expand = {
    buffers = 'lightline#bufferline#buffers',
  },
  component_type = {
    buffers = 'tabsel'
  },
  tabline = {
    left = {{ 'buffers' }},
    right = {{ 'tabs' }},
  },
  subseparator = {
    left =  '│',
    right = '│' ,
  },
  component_function = {
    readonly = 'LightlineReadonly',
    gitbranch =  'LightlineFugitive',
    fileformat = 'LightlineFileformat',
    filetype = 'LightlineFiletype',
    fileencoding = 'LightlineFileencoding',
  }
}

vim.api.nvim_command([[
  function! LightlineReadonly()
    return &readonly ? '' : ''
  endfunction
]])

vim.api.nvim_command([[
  function! LightlineFugitive()
    if exists('*FugitiveHead')
      let branch = FugitiveHead()
      return branch !=# '' ? ''.branch : ''
    endif
    return ''
  endfunction
]])

vim.api.nvim_command([[
  function! LightlineFileformat()
    return winwidth(0) > 100 ? (WebDevIconsGetFileFormatSymbol() . ' ' . &fileformat) : ''
  endfunction
]])

vim.api.nvim_command([[
  function! LightlineFiletype()
    return winwidth(0) > 100 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' . &filetype : 'no ft') : ''
  endfunction
]])

vim.api.nvim_command([[
  function! LightlineFileencoding()
    return winwidth(0) > 100 ? &fileencoding : ''
  endfunction
]])

-- Bufferline specific configuration
vim.api.nvim_set_var('lightline#bufferline#show_number', 2)
vim.api.nvim_set_var('lightline#bufferline#number_separator', '')
vim.api.nvim_set_var('lightline#bufferline#shorten_path', 0)
vim.api.nvim_set_var('lightline#bufferline#unnamed', '[No Name]')
vim.api.nvim_set_var('lightline#bufferline#unicode_symbols', 1)
vim.api.nvim_set_var('lightline#bufferline#enable_devicons', 1)
vim.api.nvim_set_var('lightline#bufferline#number_map', { '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' })

map('n', '<Leader>1', ':call lightline#bufferline#go(1)<CR>', {silent = true})
map('n', '<Leader>2', ':call lightline#bufferline#go(2)<CR>', {silent = true})
map('n', '<Leader>3', ':call lightline#bufferline#go(3)<CR>', {silent = true})
map('n', '<Leader>4', ':call lightline#bufferline#go(4)<CR>', {silent = true})
map('n', '<Leader>5', ':call lightline#bufferline#go(5)<CR>', {silent = true})
map('n', '<Leader>6', ':call lightline#bufferline#go(6)<CR>', {silent = true})
map('n', '<Leader>7', ':call lightline#bufferline#go(7)<CR>', {silent = true})
map('n', '<Leader>8', ':call lightline#bufferline#go(8)<CR>', {silent = true})
map('n', '<Leader>9', ':call lightline#bufferline#go(9)<CR>', {silent = true})
map('n', '<Leader>0', ':call lightline#bufferline#go(10)<CR>', {silent = true})

map('n', '<Leader>c1', ':call lightline#bufferline#delete(1)<CR>', {silent = true})
map('n', '<Leader>c2', ':call lightline#bufferline#delete(2)<CR>', {silent = true})
map('n', '<Leader>c3', ':call lightline#bufferline#delete(3)<CR>', {silent = true})
map('n', '<Leader>c4', ':call lightline#bufferline#delete(4)<CR>', {silent = true})
map('n', '<Leader>c5', ':call lightline#bufferline#delete(5)<CR>', {silent = true})
map('n', '<Leader>c6', ':call lightline#bufferline#delete(6)<CR>', {silent = true})
map('n', '<Leader>c7', ':call lightline#bufferline#delete(7)<CR>', {silent = true})
map('n', '<Leader>c8', ':call lightline#bufferline#delete(8)<CR>', {silent = true})
map('n', '<Leader>c9', ':call lightline#bufferline#delete(9)<CR>', {silent = true})
map('n', '<Leader>c0', ':call lightline#bufferline#delete(10)<CR>', {silent = true})

-- TODO:
--  autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
