local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local b = styles.bold
local i = styles.italic
local n = styles.inverse
local uc = styles.undercurl
local ul = styles.underline
local r = styles.reverse
local sto = styles.standout
local no = styles.NONE
local v = vim

-- +---------------------------------------------+
-- |  Color Name  |         RGB        |   Hex   |
-- |--------------+--------------------+---------|
-- | Black        | rgb(40, 44, 52)    | #1d1f21 |
-- |--------------+--------------------+---------|
-- | White        | rgb(171, 178, 191) | #abb2bf |
-- |--------------+--------------------+---------|
-- | Light Red    | rgb(224, 108, 117) | #e06c75 |
-- |--------------+--------------------+---------|
-- | Dark Red     | rgb(190, 80, 70)   | #be5046 |
-- |--------------+--------------------+---------|
-- | Green        | rgb(152, 195, 121) | #98c379 |
-- |--------------+--------------------+---------|
-- | Light Yellow | rgb(229, 192, 123) | #e5c07b |
-- |--------------+--------------------+---------|
-- | Dark Yellow  | rgb(209, 154, 102) | #d19a66 |
-- |--------------+--------------------+---------|
-- | Blue         | rgb(97, 175, 239)  | #61afef |
-- |--------------+--------------------+---------|
-- | Magenta      | rgb(198, 120, 221) | #c678dd |
-- |--------------+--------------------+---------|
-- | Cyan         | rgb(86, 182, 194)  | #56b6c2 |
-- |--------------+--------------------+---------|
-- | Gutter Grey  | rgb(76, 82, 99)    | #4b5263 |
-- |--------------+--------------------+---------|
-- | Comment Grey | rgb(92, 99, 112)   | #5c6370 |
-- |--------------+--------------------+---------|
-- | BG Dark      |                    | #151718 |
-- |--------------+--------------------+---------|
-- | FG Dark      |                    | #383D44 |
-- +---------------------------------------------+

v.api.nvim_set_option('termguicolors', true)
v.api.nvim_set_option('background', 'dark')

-- Vim Terminal Colors
v.g.terminal_color_0 = "#1d1f21"
v.g.terminal_color_8 = "#1d1f21"
v.g.terminal_color_1 = "#e06c75"
v.g.terminal_color_9 = "#e06c75"
v.g.terminal_color_2 = "#98c379"
v.g.terminal_color_10 = "#98c379"
v.g.terminal_color_3 = "#e5c07b"
v.g.terminal_color_11 = "#e5c07b"
v.g.terminal_color_4 = "#61afef"
v.g.terminal_color_12 = "#61afef"
v.g.terminal_color_5 = "#c678dd"
v.g.terminal_color_13 = "#c678dd"
v.g.terminal_color_6 = "#56b6c2"
v.g.terminal_color_14 = "#56b6c2"
v.g.terminal_color_7 = "#abb2bf"
v.g.terminal_color_15 = "#abb2bf"

Color.new('red', '#e06c75')
Color.new('dark_red', '#be5046')
Color.new('green', '#98c379')
Color.new('yellow', '#e5c07b')
Color.new('dark_yellow', '#d19a66')
Color.new('blue', '#61afef')
Color.new('purple', '#c678dd')
Color.new('cyan', '#56b6c2')
Color.new('white', '#abb2bf')
Color.new('black', '#1D1F21')
Color.new('visual_black', '#282c34')
Color.new('comment_grey', '#5C6370')
Color.new('gutter_fg_grey', '#4B5263')
Color.new('cursor_grey', '#1f2123')
Color.new('visual_grey', '#abb2bf')
Color.new('menu_grey', '#3E4452')
Color.new('special_grey', '#3B4048')
Color.new('vertsplit', '#181A1F')


-- disable automatic coloring
-- vim.api.nvim_command('autocmd! BufferlineColors VimEnter *')
-- vim.api.nvim_command('autocmd! BufferlineColors ColorScheme *')
-- colors.set_highlight('BufferLineFill', user_colors.bufferline_fill)
-- colors.set_highlight('BufferLineInactive', user_colors.bufferline_buffer_inactive)
-- Group.new('BufferLineBackground', colors.red, colors.black, no) -- any comment
-- colors.set_highlight('BufferLineBackground', user_colors.bufferline_background)
-- colors.set_highlight('BufferLineSelected', user_colors.bufferline_selected)
-- colors.set_highlight('BufferLineSelectedIndicator', user_colors.bufferline_selected_indicator)
-- colors.set_highlight('BufferLineModified', user_colors.bufferline_modified)
-- colors.set_highlight('BufferLineModifiedSelected', user_colors.bufferline_modified_selected)
-- colors.set_highlight('BufferLineModifiedInactive', user_colors.bufferline_modified_inactive)
-- colors.set_highlight('BufferLineTab', user_colors.bufferline_tab)
-- colors.set_highlight('BufferLineSeparator', user_colors.bufferline_separator)
-- colors.set_highlight('BufferLineTabSelectedSeparator', user_colors.bufferline_tab_selected_separator)
-- colors.set_highlight('BufferLineTabSelected', user_colors.bufferline_tab_selected)
-- colors.set_highlight('BufferLineTabClose', user_colors.bufferline_tab_close)
-- colors.set_highlight('BufferLinePick', user_colors.bufferline_pick)
-- colors.set_highlight('BufferLinePickInactive', user_colors.bufferline_pick_inactive)


-- Syntax Groups
Group.new('Comment', colors.comment_grey, colors.none, i) -- any comment
Group.new('Constant', colors.cyan, colors.none, no) -- any constant
Group.new('String', colors.green, colors.none, no) -- a string constant: "this is a string"
Group.new('Character', colors.green, colors.none, no) -- a character constant: 'c', '\n'
Group.new('Number', colors.dark_yellow, colors.none, no) -- a number constant: 234, 0xff
Group.new('Boolean', colors.dark_yellow, colors.none, no) -- a boolean constant: TRUE, false
Group.new('Float', colors.dark_yellow, colors.none, no) -- a floating point constant: 2.3e10
Group.new('Identifier', colors.red, colors.none, no) -- any variable name
Group.new('Function', colors.blue, colors.none, no) -- function name (also: methods for classes)
Group.new('Statement', colors.purple, colors.none, no) -- any statement
Group.new('Conditional', colors.purple, colors.none, no) -- if, then, else, endif, switch, etc.
Group.new('Repeat', colors.purple, colors.none, no) -- for, do, while, etc.
Group.new('Label', colors.purple, colors.none, no) -- case, default, etc.
Group.new('Operator', colors.purple, colors.none, no) -- sizeof", "+", "*", etc.
Group.new('Keyword', colors.red, colors.none, no) -- any other keyword
Group.new('Exception', colors.purple, colors.none, no) -- try, catch, throw
Group.new('PreProc', colors.yellow, colors.none, no) -- generic Preprocessor
Group.new('Include', colors.blue, colors.none, no) -- preprocessor #include
Group.new('Define', colors.purple, colors.none, no) -- preprocessor #define
Group.new('Macro', colors.purple, colors.none, no) -- same as Define
Group.new('PreCondit', colors.yellow, colors.none, no) -- preprocessor #if, #else, #endif, etc.
Group.new('Type', colors.yellow, colors.none, no) -- int, long, char, etc.
Group.new('StorageClass', colors.yellow, colors.none, no) -- static, register, volatile, etc.
Group.new('Structure', colors.yellow, colors.none, no) -- struct, union, enum, etc.
Group.new('Typedef', colors.yellow, colors.none, no) -- A typedef
Group.new('Special', colors.blue, colors.none, no) -- any special symbol
Group.new('SpecialChar', colors.none, colors.none, no) -- special character in a constant
Group.new('Tag', colors.none, colors.none, no) -- you can use CTRL-] on this
Group.new('Delimiter', colors.none, colors.none, no) -- character that needs attention
Group.new('SpecialComment', colors.comment_grey, colors.none, no) -- special things inside a comment
Group.new('Debug', colors.none, colors.none, no) -- debugging statements
Group.new('Underlined', colors.none, colors.none, ul) -- text that stands out, HTML links
Group.new('Ignore', colors.none, colors.none, no) -- left blank, hidden
Group.new('Error', colors.red, colors.none, no) -- any erroneous construct
Group.new('Todo', colors.purple, colors.none, no) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

-- Highlighting Groups
Group.new('ColorColumn', colors.none, colors.cursor_grey, no) -- used for the columns set with 'colorcolumn'
Group.new('Conceal', colors.none, colors.none, no) -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', colors.black, colors.blue, no) -- the character under the cursor
Group.new('CursorIM', colors.none, colors.none, no) -- like Cursor, but used when in IME mode
Group.new('CursorColumn', colors.none, colors.cursor_grey, no) -- the screen column that the cursor is in when 'cursorcolumn' is set
Group.new('CursorLine', colors.none, colors.cursor_grey, no) -- the screen line that the cursor is in when 'cursorline' is set
Group.new('Directory', colors.blue, colors.none, no) -- directory names (and other special names in listings)
Group.new('DiffAdd', colors.black, colors.green, no) -- diff mode: Added line
Group.new('DiffChange', colors.yellow, colors.none, ul) -- diff mode: Changed line
Group.new('DiffDelete', colors.red, colors.black, no) -- diff mode: Deleted line
Group.new('DiffText', colors.yellow, colors.black, no) -- diff mode: Changed text within a changed line
Group.new('ErrorMsg', colors.red, colors.none, no) -- error messages on the command line
Group.new('VertSplit', colors.vertsplit, colors.none, no) -- the column separating vertically split windows
Group.new('Folded', colors.comment_grey, colors.none, no) -- line used for closed folds
Group.new('FoldColumn', colors.none, colors.none, no) -- 'foldcolumn'
Group.new('SignColumn', colors.none, colors.none, no) -- column where signs are displayed
Group.new('IncSearch', colors.yellow, colors.comment_grey, no) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('LineNr', colors.gutter_fg_grey, colors.none, no) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr', colors.none, colors.none, no) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen', colors.blue, colors.none, ul) -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg', colors.none, colors.none, no) -- 'showmode' message (e.g., "-- INSERT --")
Group.new('MoreMsg', colors.none, colors.none, no) -- more-prompt
Group.new('NonText', colors.special_grey, colors.none, no) -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal', colors.white, colors.black, no) -- normal text
Group.new('Pmenu', colors.none, colors.menu_grey, no) -- Popup menu: normal item.
Group.new('PmenuSel', colors.black, colors.blue, no) -- Popup menu: selected item.
Group.new('PmenuSbar', colors.none, colors.special_grey, no) -- Popup menu: scrollbar.
Group.new('PmenuThumb', colors.none, colors.white, no) -- Popup menu: Thumb of the scrollbar.
Group.new('Question', colors.purple, colors.none, no) -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine', colors.black, colors.yellow, no) -- Current quickfix item in the quickfix window.
Group.new('Search', colors.black, colors.yellow, no) -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('SpecialKey', colors.special_grey, colors.none, no) -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad', colors.red, colors.none, ul) -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', colors.dark_yellow, colors.none, no) -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', colors.dark_yellow, colors.none, no) -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', colors.dark_yellow, colors.none, no) -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine', colors.white, colors.cursor_grey, no) -- status line of current window
Group.new('StatusLineNC', colors.comment_grey, colors.none, no) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new('StatusLineTerm', colors.white, colors.cursor_grey, no) -- status line of current :terminal window
Group.new('StatusLineTermNC', colors.comment_grey, colors.none, no) -- status line of non-current :terminal window
Group.new('TabLine', colors.comment_grey, colors.none, no) -- tab pages line, not active tab page label
Group.new('TabLineFill', colors.none, colors.none, no) -- tab pages line, where there are no labels
Group.new('TabLineSel', colors.white, colors.none, no) -- tab pages line, active tab page label
Group.new('Terminal', colors.white, colors.black, no) -- terminal window (see terminal-size-color)
Group.new('Title', colors.green, colors.none, no) -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual', colors.none, colors.visual_black, no) -- Visual mode selection
Group.new('VisualNOS', colors.none, colors.visual_grey, no) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg', colors.yellow, colors.none, no) -- warning messages
Group.new('WildMenu', colors.black, colors.blue, no) -- current match in 'wildmenu' completion

-- Termdebug highlighting for Vim 8.1+

-- call s:h("debugPC", { "bg": s:special_grey }) " the current position
-- call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint

-- Language-Specific Highlighting

-- CSS
Group.new('cssAttrComma', colors.purple, colors.none, no)
Group.new('cssAttributeSelector', colors.green, colors.none, no)
Group.new('cssBraces', colors.white, colors.none, no)
Group.new('cssClassName', colors.dark_yellow, colors.none, no)
Group.new('cssClassNameDot', colors.dark_yellow, colors.none, no)
Group.new('cssDefinition', colors.purple, colors.none, no)
Group.new('cssFontAttr', colors.dark_yellow, colors.none, no)
Group.new('cssFontDescriptor', colors.purple, colors.none, no)
Group.new('cssFunctionName', colors.blue, colors.none, no)
Group.new('cssIdentifier', colors.blue, colors.none, no)
Group.new('cssImportant', colors.purple, colors.none, no)
Group.new('cssInclude', colors.white, colors.none, no)
Group.new('cssIncludeKeyword', colors.purple, colors.none, no)
Group.new('cssMediaType', colors.dark_yellow, colors.none, no)
Group.new('cssProp', colors.white, colors.none, no)
Group.new('cssPseudoClassId', colors.dark_yellow, colors.none, no)
Group.new('cssSelectorOp', colors.purple, colors.none, no)
Group.new('cssSelectorOp2', colors.purple, colors.none, no)
Group.new('cssTagName', colors.red, colors.none, no)

-- Fish Shell
Group.new('fishKeyword', colors.purple, colors.none, no)
Group.new('fishConditional', colors.purple, colors.none, no)

-- Go
Group.new('goDeclaration', colors.purple, colors.none, no)
Group.new('goBuiltins', colors.cyan, colors.none, no)
Group.new('goFunctionCall', colors.blue, colors.none, no)
Group.new('goVarDefs', colors.red, colors.none, no)
Group.new('goVarAssign', colors.red, colors.none, no)
Group.new('goVar', colors.purple, colors.none, no)
Group.new('goConst', colors.purple, colors.none, no)
Group.new('goType', colors.yellow, colors.none, no)
Group.new('goTypeName', colors.yellow, colors.none, no)
Group.new('goDeclType', colors.cyan, colors.none, no)
Group.new('goTypeDecl', colors.purple, colors.none, no)

-- HTML (keep consistent with Markdown, below)
Group.new('htmlArg', colors.dark_yellow, colors.none, no)
Group.new('htmlBold', colors.dark_yellow, colors.none, b)
Group.new('htmlEndTag', colors.white, colors.none, no)
Group.new('htmlH1', colors.red, colors.none, no)
Group.new('htmlH2', colors.red, colors.none, no)
Group.new('htmlH3', colors.red, colors.none, no)
Group.new('htmlH4', colors.red, colors.none, no)
Group.new('htmlH5', colors.red, colors.none, no)
Group.new('htmlH6', colors.red, colors.none, no)
Group.new('htmlItalic', colors.purple, colors.none, i)
Group.new('htmlLink', colors.cyan, colors.none, ul)
Group.new('htmlSpecialChar', colors.dark_yellow, colors.none, no)
Group.new('htmlSpecialTagName', colors.red, colors.none, no)
Group.new('htmlTag', colors.white, colors.none, no)
Group.new('htmlTagN', colors.red, colors.none, no)
Group.new('htmlTagName', colors.red, colors.none, no)
Group.new('htmlTitle', colors.white, colors.none, no)

-- JavaScript
Group.new('javaScriptBraces', colors.white, colors.none, no)
Group.new('javaScriptFunction', colors.purple, colors.none, no)
Group.new('javaScriptIdentifier', colors.purple, colors.none, no)
Group.new('javaScriptNull', colors.dark_yellow, colors.none, no)
Group.new('javaScriptNumber', colors.dark_yellow, colors.none, no)
Group.new('javaScriptRequire', colors.cyan, colors.none, no)
Group.new('javaScriptReserved', colors.purple, colors.none, no)
-- https://github.com/pangloss/vim-javascript
Group.new('jsArrowFunction', colors.purple, colors.none, no)
Group.new('jsClassKeyword', colors.purple, colors.none, no)
Group.new('jsClassMethodType', colors.purple, colors.none, no)
Group.new('jsDocParam', colors.blue, colors.none, no)
Group.new('jsDocTags', colors.purple, colors.none, no)
Group.new('jsExport', colors.purple, colors.none, no)
Group.new('jsExportDefault', colors.purple, colors.none, no)
Group.new('jsExtendsKeyword', colors.purple, colors.none, no)
Group.new('jsFrom', colors.purple, colors.none, no)
Group.new('jsFuncCall', colors.blue, colors.none, no)
Group.new('jsFunction', colors.purple, colors.none, no)
Group.new('jsGenerator', colors.yellow, colors.none, no)
Group.new('jsGlobalObjects', colors.yellow, colors.none, no)
Group.new('jsImport', colors.purple, colors.none, no)
Group.new('jsModuleAs', colors.purple, colors.none, no)
Group.new('jsModuleWords', colors.purple, colors.none, no)
Group.new('jsModules', colors.purple, colors.none, no)
Group.new('jsNull', colors.dark_yellow, colors.none, no)
Group.new('jsOperator', colors.purple, colors.none, no)
Group.new('jsStorageClass', colors.purple, colors.none, no)
Group.new('jsSuper', colors.red, colors.none, no)
Group.new('jsTemplateBraces', colors.dark_red, colors.none, no)
Group.new('jsTemplateVar', colors.green, colors.none, no)
Group.new('jsThis', colors.red, colors.none, no)
Group.new('jsUndefined', colors.dark_yellow, colors.none, no)
-- https://github.com/othree/yajs.vim
Group.new('javascriptArrowFunc', colors.purple, colors.none, no)
Group.new('javascriptClassExtends', colors.purple, colors.none, no)
Group.new('javascriptClassKeyword', colors.purple, colors.none, no)
Group.new('javascriptDocNotation', colors.purple, colors.none, no)
Group.new('javascriptDocParamName', colors.blue, colors.none, no)
Group.new('javascriptDocTags', colors.purple, colors.none, no)
Group.new('javascriptEndColons', colors.white, colors.none, no)
Group.new('javascriptExport', colors.purple, colors.none, no)
Group.new('javascriptFuncArg', colors.white, colors.none, no)
Group.new('javascriptFuncKeyword', colors.purple, colors.none, no)
Group.new('javascriptIdentifier', colors.red, colors.none, no)
Group.new('javascriptImport', colors.purple, colors.none, no)
Group.new('javascriptMethodName', colors.white, colors.none, no)
Group.new('javascriptObjectLabel', colors.white, colors.none, no)
Group.new('javascriptOpSymbol', colors.cyan, colors.none, no)
Group.new('javascriptOpSymbols', colors.cyan, colors.none, no)
Group.new('javascriptPropertyName', colors.green, colors.none, no)
Group.new('javascriptTemplateSB', colors.dark_red, colors.none, no)
Group.new('javascriptVariable', colors.purple, colors.none, no)

-- JSON
Group.new('jsonCommentError', colors.white, colors.none, no)
Group.new('jsonKeyword', colors.red, colors.none, no)
Group.new('jsonBoolean', colors.dark_yellow, colors.none, no)
Group.new('jsonNumber', colors.dark_yellow, colors.none, no)
Group.new('jsonQuote', colors.white, colors.none, no)
Group.new('jsonMissingCommaError', colors.red, colors.none, r)
Group.new('jsonNoQuotesError', colors.red, colors.none, r)
Group.new('jsonNumError', colors.red, colors.none, r)
Group.new('jsonString', colors.green, colors.none, no)
Group.new('jsonStringSQError', colors.red, colors.none, r)
Group.new('jsonSemicolonError', colors.red, colors.none, r)

-- LESS
Group.new('lessVariable', colors.purple, colors.none, no)
Group.new('lessAmpersandChar', colors.white, colors.none, no)
Group.new('lessClass', colors.dark_yellow, colors.none, no)

-- Markdown (keep consistent with HTML, above)
Group.new('markdownBlockquote', colors.comment_grey, colors.none, no)
Group.new('markdownBold', colors.dark_yellow, colors.none, b)
Group.new('markdownCode', colors.green, colors.none, no)
Group.new('markdownCodeBlock', colors.green, colors.none, no)
Group.new('markdownCodeDelimiter', colors.green, colors.none, no)
Group.new('markdownH1', colors.red, colors.none, no)
Group.new('markdownH2', colors.red, colors.none, no)
Group.new('markdownH3', colors.red, colors.none, no)
Group.new('markdownH4', colors.red, colors.none, no)
Group.new('markdownH5', colors.red, colors.none, no)
Group.new('markdownH6', colors.red, colors.none, no)
Group.new('markdownHeadingDelimiter', colors.red, colors.none, no)
Group.new('markdownHeadingRule', colors.comment_grey, colors.none, no)
Group.new('markdownId', colors.purple, colors.none, no)
Group.new('markdownIdDeclaration', colors.blue, colors.none, no)
Group.new('markdownIdDelimiter', colors.purple, colors.none, no)
Group.new('markdownItalic', colors.purple, colors.none, i)
Group.new('markdownLinkDelimiter', colors.purple, colors.none, no)
Group.new('markdownLinkText', colors.blue, colors.none, no)
Group.new('markdownListMarker', colors.red, colors.none, no)
Group.new('markdownOrderedListMarker', colors.red, colors.none, no)
Group.new('markdownRule', colors.comment_grey, colors.none, no)
Group.new('markdownUrl', colors.cyan, colors.none, ul)

-- Perl
Group.new('perlFiledescRead', colors.green, colors.none, no)
Group.new('perlFunction', colors.purple, colors.none, no)
Group.new('perlMatchStartEnd', colors.blue, colors.none, no)
Group.new('perlMethod', colors.purple, colors.none, no)
Group.new('perlPOD', colors.comment_grey, colors.none, no)
Group.new('perlSharpBang', colors.comment_grey, colors.none, no)
Group.new('perlSpecialString', colors.cyan, colors.none, no)
Group.new('perlStatementFiledesc', colors.red, colors.none, no)
Group.new('perlStatementFlow', colors.red, colors.none, no)
Group.new('perlStatementInclude', colors.purple, colors.none, no)
Group.new('perlStatementScalar', colors.purple, colors.none, no)
Group.new('perlStatementStorage', colors.purple, colors.none, no)
Group.new('perlSubName', colors.yellow, colors.none, no)
Group.new('perlVarPlain', colors.blue, colors.none, no)

-- PHP
Group.new('phpVarSelector', colors.red, colors.none, no)
Group.new('phpOperator', colors.white, colors.none, no)
Group.new('phpParent', colors.white, colors.none, no)
Group.new('phpMemberSelector', colors.white, colors.none, no)
Group.new('phpType', colors.purple, colors.none, no)
Group.new('phpKeyword', colors.purple, colors.none, no)
Group.new('phpClass', colors.yellow, colors.none, no)
Group.new('phpUseClass', colors.white, colors.none, no)
Group.new('phpUseAlias', colors.white, colors.none, no)
Group.new('phpInclude', colors.purple, colors.none, no)
Group.new('phpClassExtends', colors.green, colors.none, no)
Group.new('phpDocTags', colors.white, colors.none, no)
Group.new('phpFunction', colors.blue, colors.none, no)
Group.new('phpFunctions', colors.cyan, colors.none, no)
Group.new('phpMethodsVar', colors.dark_yellow, colors.none, no)
Group.new('phpMagicConstants', colors.dark_yellow, colors.none, no)
Group.new('phpSuperglobals', colors.red, colors.none, no)
Group.new('phpConstants', colors.dark_yellow, colors.none, no)

-- Ruby
Group.new('rubyBlockParameter', colors.red, colors.none, no)
Group.new('rubyBlockParameterList', colors.red, colors.none, no)
Group.new('rubyClass', colors.purple, colors.none, no)
Group.new('rubyConstant', colors.yellow, colors.none, no)
Group.new('rubyControl', colors.purple, colors.none, no)
Group.new('rubyEscape', colors.red, colors.none, no)
Group.new('rubyFunction', colors.blue, colors.none, no)
Group.new('rubyGlobalVariable', colors.red, colors.none, no)
Group.new('rubyInclude', colors.blue, colors.none, no)
Group.new('rubyIncluderubyGlobalVariable', colors.red, colors.none, no)
Group.new('rubyInstanceVariable', colors.red, colors.none, no)
Group.new('rubyInterpolation', colors.cyan, colors.none, no)
Group.new('rubyInterpolationDelimiter', colors.red, colors.none, no)
Group.new('rubyInterpolationDelimiter', colors.red, colors.none, no)
Group.new('rubyRegexp', colors.cyan, colors.none, no)
Group.new('rubyRegexpDelimiter', colors.cyan, colors.none, no)
Group.new('rubyStringDelimiter', colors.green, colors.none, no)
Group.new('rubySymbol', colors.cyan, colors.none, no)

-- Sass
-- https://github.com/tpope/vim-haml
Group.new('sassAmpersand', colors.red, colors.none, no)
Group.new('sassClass', colors.dark_yellow, colors.none, no)
Group.new('sassControl', colors.purple, colors.none, no)
Group.new('sassExtend', colors.purple, colors.none, no)
Group.new('sassFor', colors.white, colors.none, no)
Group.new('sassFunction', colors.cyan, colors.none, no)
Group.new('sassId', colors.blue, colors.none, no)
Group.new('sassInclude', colors.purple, colors.none, no)
Group.new('sassMedia', colors.purple, colors.none, no)
Group.new('sassMediaOperators', colors.white, colors.none, no)
Group.new('sassMixin', colors.purple, colors.none, no)
Group.new('sassMixinName', colors.blue, colors.none, no)
Group.new('sassMixing', colors.purple, colors.none, no)
Group.new('sassVariable', colors.purple, colors.none, no)
-- https://github.com/cakebaker/scss-syntax.vim
Group.new('scssExtend', colors.purple, colors.none, no)
Group.new('scssImport', colors.purple, colors.none, no)
Group.new('scssInclude', colors.purple, colors.none, no)
Group.new('scssMixin', colors.purple, colors.none, no)
Group.new('scssSelectorName', colors.dark_yellow, colors.none, no)
Group.new('scssVariable', colors.purple, colors.none, no)

-- TeX
Group.new('texStatement', colors.purple, colors.none, no)
Group.new('texSubscripts', colors.dark_yellow, colors.none, no)
Group.new('texSuperscripts', colors.dark_yellow, colors.none, no)
Group.new('texTodo', colors.dark_red, colors.none, no)
Group.new('texBeginEnd', colors.purple, colors.none, no)
Group.new('texBeginEndName', colors.blue, colors.none, no)
Group.new('texMathMatcher', colors.blue, colors.none, no)
Group.new('texMathDelim', colors.blue, colors.none, no)
Group.new('texDelimiter', colors.dark_yellow, colors.none, no)
Group.new('texSpecialChar', colors.dark_yellow, colors.none, no)
Group.new('texCite', colors.blue, colors.none, no)
Group.new('texRefZone', colors.blue, colors.none, no)

-- TypeScript
Group.new('typescriptReserved', colors.purple, colors.none, no)
Group.new('typescriptEndColons', colors.white, colors.none, no)
Group.new('typescriptBraces', colors.white, colors.none, no)

-- XML
Group.new('xmlAttrib', colors.dark_yellow, colors.none, no)
Group.new('xmlEndTag', colors.red, colors.none, no)
Group.new('xmlTag', colors.red, colors.none, no)
Group.new('xmlTagName', colors.red, colors.none, no)

-- Plugin Highlighting

-- easymotion/vim-easymotion
Group.new('EasyMotionTarget', colors.red, colors.none, b)
Group.new('EasyMotionTarget2First', colors.yellow, colors.none, b)
Group.new('EasyMotionTarget2Second', colors.dark_yellow, colors.none, b)
Group.new('EasyMotionShade', colors.comment_grey, colors.none, no)

-- mhinz/vim-signify
Group.new('SignifySignAdd', colors.green, colors.none, no)
Group.new('SignifySignChange', colors.yellow, colors.none, no)
Group.new('SignifySignDelete', colors.red, colors.none, no)

-- neomake/neomake
Group.new('NeomakeWarningSign', colors.yellow, colors.none, no)
Group.new('NeomakeErrorSign', colors.red, colors.none, no)
Group.new('NeomakeInfoSign', colors.blue, colors.none, no)

-- plasticboy/vim-markdown (keep consistent with Markdown, above)
Group.new('mkdDelimiter', colors.purple, colors.none, no)
Group.new('mkdHeading', colors.red, colors.none, no)
Group.new('mkdLink', colors.blue, colors.none, no)
-- call s:h("mkdURL", { "fg": s:cyan, "gui": "underline", "cterm": "underline" })

-- tpope/vim-fugitive
Group.new('diffAdded', colors.green, colors.none, no)
Group.new('diffRemoved', colors.red, colors.none, no)

-- Git Highlighting
Group.new('gitcommitComment', colors.comment_grey, colors.none, no)
Group.new('gitcommitUnmerged', colors.green, colors.none, no)
Group.new('gitcommitOnBranch', colors.none, colors.none, no)
Group.new('gitcommitBranch', colors.purple, colors.none, no)
Group.new('gitcommitDiscardedType', colors.red, colors.none, no)
Group.new('gitcommitSelectedType', colors.green, colors.none, no)
Group.new('gitcommitHeader', colors.none, colors.none, no)
Group.new('gitcommitUntrackedFile', colors.cyan, colors.none, no)
Group.new('gitcommitDiscardedFile', colors.red, colors.none, no)
Group.new('gitcommitSelectedFile', colors.green, colors.none, no)
Group.new('gitcommitUnmergedFile', colors.yellow, colors.none, no)
Group.new('gitcommitFile', colors.none, colors.none, no)
Group.new('gitcommitSummary', colors.white, colors.none, no)
Group.new('gitcommitOverflow', colors.red, colors.none, no)
Group.new('gitcommitNoBranch', groups.gitcommitBranch, colors.none, no)
Group.new('gitcommitUntracked', groups.gitcommitComment, colors.none, no)
Group.new('gitcommitDiscarded', groups.gitcommitComment, colors.none, no)
Group.new('gitcommitSelected', groups.gitcommitComment, colors.none, no)
Group.new('gitcommitDiscardedArrow', groups.gitcommitDiscardedFile, colors.none,
          no)
Group.new('gitcommitSelectedArrow', groups.gitcommitSelectedFile, colors.none,
          no)
Group.new('gitcommitUnmergedArrow', groups.gitcommitUnmergedFile, colors.none,
          no)
