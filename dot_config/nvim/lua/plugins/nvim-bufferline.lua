local map = require("utils").map
local bl = require("bufferline")

bl.setup {
    options = {
        view = "multiwindow",
        numbers = "ordinal", -- "none" | "ordinal" | "buffer_id",
        number_style = "", -- "superscript" | "",
        modified_icon = "●",
        show_buffer_close_icons = false,
        mappings = true,
        always_show_bufferline = true,
        -- sort_by = "directory",
        sort_by = 'directory',
        show_tab_indicators = true,
        separator_style = "thin",

        -- diagnostics = "nvim_lsp",
        -- diagnostics_indicator = function(count, level)
        --     local icon = level:match("error") and " " or ""
        --     return " " .. icon .. count
        -- end,
        highlights = {
            warning = {
                guisp = "Yellow",
            },
            warning_selected = {
                guifg = "Yellow",
            },
            error = {
                guisp = "Red",
            },
            error_selected = {
                guifg = "Red",
            },
        };
    },
    -- highlights = {
    --     bufferline_tab = {guifg = '#383D44', guibg = '#151718'},
    --     bufferline_selected = {gui = "bold"},
    --     bufferline_buffer_inactive = {guifg = '#383D44', guibg = '#151718'}
    -- }
}

map('n', '<Leader>bb', ':BufferLinePick<CR>', {silent = true})
map('n', '[b', ':BufferLineCyclePrev<CR>', {silent = true})
map('n', ']b', ':BufferLineCycleNext<CR>', {silent = true})
