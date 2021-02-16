local map = require("utils").map
local bl = require("bufferline")

bl.setup {
    options = {
        view = "multiwindow",
        -- modified_icon = '✥',
        show_buffer_close_icons = false,
        mappings = true,
        always_show_bufferline = false,
        -- sort_by = "directory",
        numbers = "none", -- "none" | "ordinal" | "buffer_id",
        number_style = "", -- "superscript" | "",
        sort_by = 'directory',
    },
    -- highlights = {
    --     bufferline_tab = {guifg = '#383D44', guibg = '#151718'},
    --     bufferline_selected = {gui = "bold"},
    --     bufferline_buffer_inactive = {guifg = '#383D44', guibg = '#151718'}
    -- }
}

map('n', '<Leader>gb', ':BufferLinePick<CR>', {silent = true})
map('n', '[b', ':BufferLineCycleNext<CR>', {silent = true})
map('n', 'b]', ':BufferLineCyclePrev<CR>', {silent = true})
