local map = require("utils").map

-- Magic buffer-picking mode
map('n', '<Leader>bb', ':BufferPick<CR>', {silent = true})

-- Sort automatically by...
-- nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
-- nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

-- Move to previous/next
-- nnoremap <silent>    <A-,> :BufferPrevious<CR>
-- nnoremap <silent>    <A-.> :BufferNext<CR>

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

vim.g.bufferline = {
  shadow = true, -- Show a shadow over the editor in buffer-pick mode
  animation = true, -- Enable/disable animations
  icons = true, -- Enable/disable icons
  closable = false, -- Enable/disable close button
  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
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
  maximum_padding = 4, -- Sets the maximum padding width with which to surround each tab
}

