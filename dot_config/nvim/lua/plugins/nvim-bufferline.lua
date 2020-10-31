local map = require("utils").map
local bl = require("bufferline")

bl.setup{
  options = {
    -- modified_icon = '✥',
    show_buffer_close_icons = false,
    mappings = true,
    always_show_bufferline = true,
    -- sort_by = "directory",
    numbers = "ordinal", -- "none" | "ordinal" | "buffer_id",
    number_style = "", -- "superscript" | "",
  };
  highlights = {
    bufferline_selected = {
      gui = "bold",
    };
  };
}

map('n', '<Leader>gb', ':BufferLinePick<CR>', { silent = true })
