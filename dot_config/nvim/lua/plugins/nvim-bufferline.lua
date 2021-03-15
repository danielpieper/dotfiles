local map = require("utils").map
local bl = require("bufferline")

bl.setup {
    options = {
        view = "multiwindow",
        numbers = "ordinal", -- "none" | "ordinal" | "buffer_id",
        number_style = "", -- "superscript" | "",
        -- modified_icon = '✥',
        show_buffer_close_icons = false,
        mappings = true,
        always_show_bufferline = true,
        sort_by = 'directory',
        show_tab_indicators = true,
    },
    -- highlights = {
    --     bufferline_tab = {guifg = '#383D44', guibg = '#151718'},
    --     bufferline_selected = {gui = "bold"},
    --     bufferline_buffer_inactive = {guifg = '#383D44', guibg = '#151718'}
    -- }
}

map('n', '<Leader>gb', ':BufferLinePick<CR>', {silent = true})
map('n', '[b', ':BufferLineCyclePrev<CR>', {silent = true})
map('n', ']b', ':BufferLineCycleNext<CR>', {silent = true})
