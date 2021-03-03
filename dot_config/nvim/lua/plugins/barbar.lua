local map = require("utils").map

-- Magic buffer-picking mode
map('n', '<Leader>bb', ':BufferPick<CR>', {silent = true})

-- Sort automatically by...
-- nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
-- nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

-- Move to previous/next
map('n', '[b', ":BufferPrevious<CR>", {silent = true})
map('n', ']b', ":BufferNext<CR>", {silent = true})

-- Re-order to previous/next
map('n', '<Leader>b<', ":BufferMovePrevious<CR>", {silent = true})
map('n', '<Leader>b>', ":BufferMoveNext<CR>", {silent = true})

-- Goto buffer in position...
map('n', '<Leader>1', ":BufferGoto 1<CR>", {silent = true})
map('n', '<Leader>2', ":BufferGoto 2<CR>", {silent = true})
map('n', '<Leader>3', ":BufferGoto 3<CR>", {silent = true})
map('n', '<Leader>4', ":BufferGoto 4<CR>", {silent = true})
map('n', '<Leader>5', ":BufferGoto 5<CR>", {silent = true})
map('n', '<Leader>6', ":BufferGoto 6<CR>", {silent = true})
map('n', '<Leader>7', ":BufferGoto 7<CR>", {silent = true})
map('n', '<Leader>8', ":BufferGoto 8<CR>", {silent = true})
map('n', '<Leader>9', ":BufferLast<CR>", {silent = true})

-- Close buffer
map('n', '<Leader>q', ":BufferClose<CR>", {silent = true})

-- " Wipeout buffer
map('n', '<Leader>Q', ":BufferWipeout<CR>", {silent = true})

map('n', 'Q', ":BufferCloseAllButCurrent<CR>", {silent = true})
map('n', 'Ql', ":BufferCloseBuffersRight<CR>", {silent = true})
map('n', 'Qh', ":BufferCloseBuffersLeft<CR>", {silent = true})

vim.g.bufferline = {
  -- Enable/disable animations
  animation = false,

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = 'both',

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',

  -- Enable/disable close button
  closable = false,

  -- Enables/disable clickable tabs
  -- left-click: go to buffer
  -- middle-click: delete buffer
  clickable = true,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP',

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 4,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,
}

