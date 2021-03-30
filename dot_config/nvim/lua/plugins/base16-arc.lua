local utils = require("utils")

vim.cmd([[
  function! s:base16_customize() abort
    " call Base16hi("MatchParen", g:base16_gui05, g:base16_gui03, g:base16_cterm05, g:base16_cterm03, "bold,italic", "")
    highlight LineNr                             guibg=none
    highlight CursorLineNr                       guibg=none

    highlight SignColumn                         guibg=none
    highlight VertSplit                          guifg=#151718 guibg=none
    highlight DiffAdd                            guibg=none
    highlight DiffChange                         guifg=#d19a66 guibg=none
    highlight DiffModified                       guibg=none
    highlight DiffDelete                         guifg=#e06c75 guibg=none
    highlight EndOfBuffer                        guifg=#2c323c

    highlight TelescopeBorder                    guifg=#5c6370
    highlight TelescopePromptBorder              guifg=#5c6370
    highlight TelescopeResultsBorder             guifg=#5c6370
    highlight TelescopePreviewBorder             guifg=#5c6370

    highlight PmenuSel                           guibg=#56b6c2
    " highlight Constant                           guifg=#d19a66

    " highlights for indent lines:
    highlight Conceal                            guifg=#2c323c
    highlight Whitespace                         guifg=#2c323c
    highlight NvimTreeIndentMarker               guifg=#2c323c

    highlight Search                             guifg=#1D1F21 guibg=#d19a66
    highlight IncSearch                          guifg=#1D1F21 guibg=#e5c07b

    highlight NvimTreeFolderIcon                 guifg=#61afef
    highlight NvimTreeFolderName                 guifg=#61afef

    highlight LspDiagnosticsDefaultError         guifg=Red    guibg=none
    highlight LspDiagnosticsDefaultWarning       guifg=Yellow guibg=none
    highlight LspDiagnosticsDefaultInformation   guifg=LightBlue  guibg=none
    highlight LspDiagnosticsDefaultHint          guifg=LightGray  guibg=none

    highlight LspDiagnosticsUnderlineError       gui=undercurl    guisp=#e06c75    guibg=none
    highlight LspDiagnosticsUnderlineWarning     gui=undercurl    guisp=#e5c07b guibg=none
    highlight LspDiagnosticsUnderlineInformation gui=undercurl    guisp=LightBlue  guibg=none
    highlight LspDiagnosticsUnderlineHint        gui=undercurl    guisp=LightGray  guibg=none

    highlight BufferCurrent                      guifg=#56b6c2
    highlight BufferVisible                      guibg=#1D1F21
    highlight BufferVisibleIcon                  guibg=#1D1F21
    highlight BufferVisibleMod                   guibg=#1D1F21
    highlight BufferVisibleIndex                 guibg=#1D1F21
    highlight BufferVisibleSign                  guibg=#1D1F21

    highlight BufferInactiveSign                 guifg=Black guibg=#151718
  endfunction
]])

utils.augroup(
  'on_change_colorscheme',
  function ()
    vim.cmd('autocmd ColorScheme * call s:base16_customize()')
  end
)

vim.cmd("colorscheme base16-arc")

