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
v.api.nvim_set_var('colors_name', 'arcbuddy')
v.api.nvim_set_option('background', 'dark')

Color.new('red',            '#e06c75')
Color.new('dark_red',       '#be5046')
Color.new('green',          '#98c379')
Color.new('yellow',         '#e5c07b')
Color.new('dark_yellow',    '#d19a66')
Color.new('blue',           '#61afef')
Color.new('purple',         '#c678dd')
Color.new('cyan',           '#56b6c2')
Color.new('white',          '#abb2bf')
Color.new('black100',       '#1D1F21')
Color.new('black',          '#1D1F21')
Color.new('visual_black',   '#282c34')
Color.new('comment_grey',   '#5C6370')
Color.new('gutter_fg_grey', '#4B5263')
Color.new('cursor_grey',    '#1f2123')
Color.new('visual_grey',    '#abb2bf')
Color.new('menu_grey',      '#3E4452')
Color.new('special_grey',   '#3B4048')
Color.new('vertsplit',      '#181A1F')

Group.new('BufferLineFill', colors.comment_grey, nil, no)
-- colors.set_highlight('BufferLineInactive', user_colors.bufferline_buffer_inactive)
Group.new('BufferLineBackground', colors.white, colors.black:dark(), no)
-- colors.set_highlight('BufferLineSelected', user_colors.bufferline_selected)
-- colors.set_highlight('BufferLineSelectedIndicator', user_colors.bufferline_selected_indicator)
-- colors.set_highlight('BufferLineModified', user_colors.bufferline_modified)
-- colors.set_highlight('BufferLineModifiedSelected', user_colors.bufferline_modified_selected)
-- colors.set_highlight('BufferLineModifiedInactive', user_colors.bufferline_modified_inactive)
-- colors.set_highlight('BufferLineTab', colors.comment_grey, nil, no)
Group.new('BufferLineSeparator', colors.green, nil, no)
-- colors.set_highlight('BufferLineSeparator', user_colors.bufferline_separator)
-- colors.set_highlight('BufferLineTabSelectedSeparator', user_colors.bufferline_tab_selected_separator)
-- colors.set_highlight('BufferLineTabSelected', user_colors.bufferline_tab_selected)
-- colors.set_highlight('BufferLineTabClose', user_colors.bufferline_tab_close)
-- colors.set_highlight('BufferLinePick', user_colors.bufferline_pick)
-- colors.set_highlight('BufferLinePickInactive', user_colors.bufferline_pick_inactive)


-- Syntax Groups
Group.new('Comment', colors.comment_grey, nil, i) -- any comment
Group.new('Constant', colors.cyan, nil, no) -- any constant
Group.new('String', colors.green, nil, no) -- a string constant: "this is a string"
Group.new('Character', colors.green, nil, no) -- a character constant: 'c', '\n'
Group.new('Number', colors.dark_yellow, nil, no) -- a number constant: 234, 0xff
Group.new('Boolean', colors.dark_yellow, nil, no) -- a boolean constant: TRUE, false
Group.new('Float', colors.dark_yellow, nil, no) -- a floating point constant: 2.3e10
Group.new('Identifier', colors.red, nil, no) -- any variable name
Group.new('Function', colors.blue, nil, no) -- function name (also: methods for classes)
Group.new('Statement', colors.purple, nil, no) -- any statement
Group.new('Conditional', colors.purple, nil, no) -- if, then, else, endif, switch, etc.
Group.new('Repeat', colors.purple, nil, no) -- for, do, while, etc.
Group.new('Label', colors.purple, nil, no) -- case, default, etc.
Group.new('Operator', colors.purple, nil, no) -- sizeof", "+", "*", etc.
Group.new('Keyword', colors.red, nil, no) -- any other keyword
Group.new('Exception', colors.purple, nil, no) -- try, catch, throw
Group.new('PreProc', colors.yellow, nil, no) -- generic Preprocessor
Group.new('Include', colors.blue, nil, no) -- preprocessor #include
Group.new('Define', colors.purple, nil, no) -- preprocessor #define
Group.new('Macro', colors.purple, nil, no) -- same as Define
Group.new('PreCondit', colors.yellow, nil, no) -- preprocessor #if, #else, #endif, etc.
Group.new('Type', colors.yellow, nil, no) -- int, long, char, etc.
Group.new('StorageClass', colors.yellow, nil, no) -- static, register, volatile, etc.
Group.new('Structure', colors.yellow, nil, no) -- struct, union, enum, etc.
Group.new('Typedef', colors.yellow, nil, no) -- A typedef
Group.new('Special', colors.blue, nil, no) -- any special symbol
Group.new('SpecialChar', nil, nil, no) -- special character in a constant
Group.new('Tag', nil, nil, no) -- you can use CTRL-] on this
Group.new('Delimiter', nil, nil, no) -- character that needs attention
Group.new('SpecialComment', colors.comment_grey, nil, no) -- special things inside a comment
Group.new('Debug', nil, nil, no) -- debugging statements
Group.new('Underlined', nil, nil, ul) -- text that stands out, HTML links
Group.new('Ignore', nil, nil, no) -- left blank, hidden
Group.new('Error', colors.red, nil, no) -- any erroneous construct
Group.new('Todo', colors.purple, nil, no) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX



-- Highlighting Groups
Group.new('ColorColumn', nil, colors.cursor_grey, no) -- used for the columns set with 'colorcolumn'
Group.new('Conceal', nil, nil, no) -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', colors.black, colors.blue, no) -- the character under the cursor
Group.new('CursorIM', nil, nil, no) -- like Cursor, but used when in IME mode
Group.new('CursorColumn', nil, colors.cursor_grey, no) -- the screen column that the cursor is in when 'cursorcolumn' is set
Group.new('CursorLine', nil, colors.cursor_grey, no) -- the screen line that the cursor is in when 'cursorline' is set
Group.new('Directory', colors.blue, nil, no) -- directory names (and other special names in listings)
Group.new('DiffAdd', colors.black, colors.green, no) -- diff mode: Added line
Group.new('DiffChange', colors.yellow, nil, ul) -- diff mode: Changed line
Group.new('DiffDelete', colors.red, colors.black, no) -- diff mode: Deleted line
Group.new('DiffText', colors.yellow, colors.black, no) -- diff mode: Changed text within a changed line
Group.new('ErrorMsg', colors.red, nil, no) -- error messages on the command line
Group.new('VertSplit', colors.vertsplit, nil, no) -- the column separating vertically split windows
Group.new('Folded', colors.comment_grey, nil, no) -- line used for closed folds
Group.new('FoldColumn', nil, nil, no) -- 'foldcolumn'
Group.new('SignColumn', nil, nil, no) -- column where signs are displayed
Group.new('IncSearch', colors.yellow, colors.comment_grey, no) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('LineNr', colors.gutter_fg_grey, nil, no) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr', nil, nil, no) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen', colors.blue, nil, ul) -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg', nil, nil, no) -- 'showmode' message (e.g., "-- INSERT --")
Group.new('MoreMsg', nil, nil, no) -- more-prompt
Group.new('NonText', colors.special_grey, nil, no) -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal', colors.white, colors.black, no) -- normal text
Group.new('Pmenu', nil, colors.menu_grey, no) -- Popup menu: normal item.
Group.new('PmenuSel', colors.black, colors.blue, no) -- Popup menu: selected item.
Group.new('PmenuSbar', nil, colors.special_grey, no) -- Popup menu: scrollbar.
Group.new('PmenuThumb', nil, colors.white, no) -- Popup menu: Thumb of the scrollbar.
Group.new('Question', colors.purple, nil, no) -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine', colors.black, colors.yellow, no) -- Current quickfix item in the quickfix window.
Group.new('Search', colors.black, colors.yellow, no) -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('SpecialKey', colors.special_grey, nil, no) -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad', colors.red, nil, ul) -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', colors.dark_yellow, nil, no) -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', colors.dark_yellow, nil, no) -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', colors.dark_yellow, nil, no) -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine', colors.white, colors.cursor_grey, no) -- status line of current window
Group.new('StatusLineNC', colors.comment_grey, nil, no) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new('StatusLineTerm', colors.white, colors.cursor_grey, no) -- status line of current :terminal window
Group.new('StatusLineTermNC', colors.comment_grey, nil, no) -- status line of non-current :terminal window
Group.new('TabLine', colors.comment_grey, nil, no) -- tab pages line, not active tab page label
Group.new('TabLineFill', nil, nil, no) -- tab pages line, where there are no labels
Group.new('TabLineSel', colors.white, nil, no) -- tab pages line, active tab page label
Group.new('Terminal', colors.white, colors.black, no) -- terminal window (see terminal-size-color)
Group.new('Title', colors.green, nil, no) -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual', nil, colors.visual_black, no) -- Visual mode selection
Group.new('VisualNOS', nil, colors.visual_grey, no) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg', colors.yellow, nil, no) -- warning messages
Group.new('WildMenu', colors.black, colors.blue, no) -- current match in 'wildmenu' completion

-- -- Termdebug highlighting for Vim 8.1+

-- call s:h("debugPC", { "bg": s:special_grey }) " the current position
-- call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint

-- -- Language-Specific Highlighting

-- -- CSS
-- call s:h("cssAttrComma", { "fg": s:purple })
-- call s:h("cssAttributeSelector", { "fg": s:green })
-- call s:h("cssBraces", { "fg": s:white })
-- call s:h("cssClassName", { "fg": s:dark_yellow })
-- call s:h("cssClassNameDot", { "fg": s:dark_yellow })
-- call s:h("cssDefinition", { "fg": s:purple })
-- call s:h("cssFontAttr", { "fg": s:dark_yellow })
-- call s:h("cssFontDescriptor", { "fg": s:purple })
-- call s:h("cssFunctionName", { "fg": s:blue })
-- call s:h("cssIdentifier", { "fg": s:blue })
-- call s:h("cssImportant", { "fg": s:purple })
-- call s:h("cssInclude", { "fg": s:white })
-- call s:h("cssIncludeKeyword", { "fg": s:purple })
-- call s:h("cssMediaType", { "fg": s:dark_yellow })
-- call s:h("cssProp", { "fg": s:white })
-- call s:h("cssPseudoClassId", { "fg": s:dark_yellow })
-- call s:h("cssSelectorOp", { "fg": s:purple })
-- call s:h("cssSelectorOp2", { "fg": s:purple })
-- call s:h("cssTagName", { "fg": s:red })

--  -- Fish Shell
-- call s:h("fishKeyword", { "fg": s:purple })
-- call s:h("fishConditional", { "fg": s:purple })

--  -- Go
-- call s:h("goDeclaration", { "fg": s:purple })
-- call s:h("goBuiltins", { "fg": s:cyan })
-- call s:h("goFunctionCall", { "fg": s:blue })
-- call s:h("goVarDefs", { "fg": s:red })
-- call s:h("goVarAssign", { "fg": s:red })
-- call s:h("goVar", { "fg": s:purple })
-- call s:h("goConst", { "fg": s:purple })
-- call s:h("goType", { "fg": s:yellow })
-- call s:h("goTypeName", { "fg": s:yellow })
-- call s:h("goDeclType", { "fg": s:cyan })
-- call s:h("goTypeDecl", { "fg": s:purple })

--  -- HTML (keep consistent with Markdown, below)
-- call s:h("htmlArg", { "fg": s:dark_yellow })
-- call s:h("htmlBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("htmlEndTag", { "fg": s:white })
-- call s:h("htmlH1", { "fg": s:red })
-- call s:h("htmlH2", { "fg": s:red })
-- call s:h("htmlH3", { "fg": s:red })
-- call s:h("htmlH4", { "fg": s:red })
-- call s:h("htmlH5", { "fg": s:red })
-- call s:h("htmlH6", { "fg": s:red })
-- call s:h("htmlItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
-- call s:h("htmlLink", { "fg": s:cyan, "gui": "underline", "cterm": "underline" })
-- call s:h("htmlSpecialChar", { "fg": s:dark_yellow })
-- call s:h("htmlSpecialTagName", { "fg": s:red })
-- call s:h("htmlTag", { "fg": s:white })
-- call s:h("htmlTagN", { "fg": s:red })
-- call s:h("htmlTagName", { "fg": s:red })
-- call s:h("htmlTitle", { "fg": s:white })

--  -- JavaScript
-- call s:h("javaScriptBraces", { "fg": s:white })
-- call s:h("javaScriptFunction", { "fg": s:purple })
-- call s:h("javaScriptIdentifier", { "fg": s:purple })
-- call s:h("javaScriptNull", { "fg": s:dark_yellow })
-- call s:h("javaScriptNumber", { "fg": s:dark_yellow })
-- call s:h("javaScriptRequire", { "fg": s:cyan })
-- call s:h("javaScriptReserved", { "fg": s:purple })
-- " https://github.com/pangloss/vim-javascript
-- call s:h("jsArrowFunction", { "fg": s:purple })
-- call s:h("jsClassKeyword", { "fg": s:purple })
-- call s:h("jsClassMethodType", { "fg": s:purple })
-- call s:h("jsDocParam", { "fg": s:blue })
-- call s:h("jsDocTags", { "fg": s:purple })
-- call s:h("jsExport", { "fg": s:purple })
-- call s:h("jsExportDefault", { "fg": s:purple })
-- call s:h("jsExtendsKeyword", { "fg": s:purple })
-- call s:h("jsFrom", { "fg": s:purple })
-- call s:h("jsFuncCall", { "fg": s:blue })
-- call s:h("jsFunction", { "fg": s:purple })
-- call s:h("jsGenerator", { "fg": s:yellow })
-- call s:h("jsGlobalObjects", { "fg": s:yellow })
-- call s:h("jsImport", { "fg": s:purple })
-- call s:h("jsModuleAs", { "fg": s:purple })
-- call s:h("jsModuleWords", { "fg": s:purple })
-- call s:h("jsModules", { "fg": s:purple })
-- call s:h("jsNull", { "fg": s:dark_yellow })
-- call s:h("jsOperator", { "fg": s:purple })
-- call s:h("jsStorageClass", { "fg": s:purple })
-- call s:h("jsSuper", { "fg": s:red })
-- call s:h("jsTemplateBraces", { "fg": s:dark_red })
-- call s:h("jsTemplateVar", { "fg": s:green })
-- call s:h("jsThis", { "fg": s:red })
-- call s:h("jsUndefined", { "fg": s:dark_yellow })
-- -- https://github.com/othree/yajs.vim
-- call s:h("javascriptArrowFunc", { "fg": s:purple })
-- call s:h("javascriptClassExtends", { "fg": s:purple })
-- call s:h("javascriptClassKeyword", { "fg": s:purple })
-- call s:h("javascriptDocNotation", { "fg": s:purple })
-- call s:h("javascriptDocParamName", { "fg": s:blue })
-- call s:h("javascriptDocTags", { "fg": s:purple })
-- call s:h("javascriptEndColons", { "fg": s:white })
-- call s:h("javascriptExport", { "fg": s:purple })
-- call s:h("javascriptFuncArg", { "fg": s:white })
-- call s:h("javascriptFuncKeyword", { "fg": s:purple })
-- call s:h("javascriptIdentifier", { "fg": s:red })
-- call s:h("javascriptImport", { "fg": s:purple })
-- call s:h("javascriptMethodName", { "fg": s:white })
-- call s:h("javascriptObjectLabel", { "fg": s:white })
-- call s:h("javascriptOpSymbol", { "fg": s:cyan })
-- call s:h("javascriptOpSymbols", { "fg": s:cyan })
-- call s:h("javascriptPropertyName", { "fg": s:green })
-- call s:h("javascriptTemplateSB", { "fg": s:dark_red })
-- call s:h("javascriptVariable", { "fg": s:purple })

--  -- JSON
-- call s:h("jsonCommentError", { "fg": s:white })
-- call s:h("jsonKeyword", { "fg": s:red })
-- call s:h("jsonBoolean", { "fg": s:dark_yellow })
-- call s:h("jsonNumber", { "fg": s:dark_yellow })
-- call s:h("jsonQuote", { "fg": s:white })
-- call s:h("jsonMissingCommaError", { "fg": s:red, "gui": "reverse" })
-- call s:h("jsonNoQuotesError", { "fg": s:red, "gui": "reverse" })
-- call s:h("jsonNumError", { "fg": s:red, "gui": "reverse" })
-- call s:h("jsonString", { "fg": s:green })
-- call s:h("jsonStringSQError", { "fg": s:red, "gui": "reverse" })
-- call s:h("jsonSemicolonError", { "fg": s:red, "gui": "reverse" })

--  -- LESS
-- call s:h("lessVariable", { "fg": s:purple })
-- call s:h("lessAmpersandChar", { "fg": s:white })
-- call s:h("lessClass", { "fg": s:dark_yellow })

--  -- Markdown (keep consistent with HTML, above)
-- call s:h("markdownBlockquote", { "fg": s:comment_grey })
-- call s:h("markdownBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("markdownCode", { "fg": s:green })
-- call s:h("markdownCodeBlock", { "fg": s:green })
-- call s:h("markdownCodeDelimiter", { "fg": s:green })
-- call s:h("markdownH1", { "fg": s:red })
-- call s:h("markdownH2", { "fg": s:red })
-- call s:h("markdownH3", { "fg": s:red })
-- call s:h("markdownH4", { "fg": s:red })
-- call s:h("markdownH5", { "fg": s:red })
-- call s:h("markdownH6", { "fg": s:red })
-- call s:h("markdownHeadingDelimiter", { "fg": s:red })
-- call s:h("markdownHeadingRule", { "fg": s:comment_grey })
-- call s:h("markdownId", { "fg": s:purple })
-- call s:h("markdownIdDeclaration", { "fg": s:blue })
-- call s:h("markdownIdDelimiter", { "fg": s:purple })
-- call s:h("markdownItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
-- call s:h("markdownLinkDelimiter", { "fg": s:purple })
-- call s:h("markdownLinkText", { "fg": s:blue })
-- call s:h("markdownListMarker", { "fg": s:red })
-- call s:h("markdownOrderedListMarker", { "fg": s:red })
-- call s:h("markdownRule", { "fg": s:comment_grey })
-- call s:h("markdownUrl", { "fg": s:cyan, "gui": "underline", "cterm": "underline" })

--  -- Perl
-- call s:h("perlFiledescRead", { "fg": s:green })
-- call s:h("perlFunction", { "fg": s:purple })
-- call s:h("perlMatchStartEnd",{ "fg": s:blue })
-- call s:h("perlMethod", { "fg": s:purple })
-- call s:h("perlPOD", { "fg": s:comment_grey })
-- call s:h("perlSharpBang", { "fg": s:comment_grey })
-- call s:h("perlSpecialString",{ "fg": s:cyan })
-- call s:h("perlStatementFiledesc", { "fg": s:red })
-- call s:h("perlStatementFlow",{ "fg": s:red })
-- call s:h("perlStatementInclude", { "fg": s:purple })
-- call s:h("perlStatementScalar",{ "fg": s:purple })
-- call s:h("perlStatementStorage", { "fg": s:purple })
-- call s:h("perlSubName",{ "fg": s:yellow })
-- call s:h("perlVarPlain",{ "fg": s:blue })

--  -- PHP
-- call s:h("phpVarSelector", { "fg": s:red })
-- call s:h("phpOperator", { "fg": s:white })
-- call s:h("phpParent", { "fg": s:white })
-- call s:h("phpMemberSelector", { "fg": s:white })
-- call s:h("phpType", { "fg": s:purple })
-- call s:h("phpKeyword", { "fg": s:purple })
-- call s:h("phpClass", { "fg": s:yellow })
-- call s:h("phpUseClass", { "fg": s:white })
-- call s:h("phpUseAlias", { "fg": s:white })
-- call s:h("phpInclude", { "fg": s:purple })
-- call s:h("phpClassExtends", { "fg": s:green })
-- call s:h("phpDocTags", { "fg": s:white })
-- call s:h("phpFunction", { "fg": s:blue })
-- call s:h("phpFunctions", { "fg": s:cyan })
-- call s:h("phpMethodsVar", { "fg": s:dark_yellow })
-- call s:h("phpMagicConstants", { "fg": s:dark_yellow })
-- call s:h("phpSuperglobals", { "fg": s:red })
-- call s:h("phpConstants", { "fg": s:dark_yellow })

--  -- Ruby
-- call s:h("rubyBlockParameter", { "fg": s:red})
-- call s:h("rubyBlockParameterList", { "fg": s:red })
-- call s:h("rubyClass", { "fg": s:purple})
-- call s:h("rubyConstant", { "fg": s:yellow})
-- call s:h("rubyControl", { "fg": s:purple })
-- call s:h("rubyEscape", { "fg": s:red})
-- call s:h("rubyFunction", { "fg": s:blue})
-- call s:h("rubyGlobalVariable", { "fg": s:red})
-- call s:h("rubyInclude", { "fg": s:blue})
-- call s:h("rubyIncluderubyGlobalVariable", { "fg": s:red})
-- call s:h("rubyInstanceVariable", { "fg": s:red})
-- call s:h("rubyInterpolation", { "fg": s:cyan })
-- call s:h("rubyInterpolationDelimiter", { "fg": s:red })
-- call s:h("rubyInterpolationDelimiter", { "fg": s:red})
-- call s:h("rubyRegexp", { "fg": s:cyan})
-- call s:h("rubyRegexpDelimiter", { "fg": s:cyan})
-- call s:h("rubyStringDelimiter", { "fg": s:green})
-- call s:h("rubySymbol", { "fg": s:cyan})

--  -- Sass
--  -- https://github.com/tpope/vim-haml
-- call s:h("sassAmpersand", { "fg": s:red })
-- call s:h("sassClass", { "fg": s:dark_yellow })
-- call s:h("sassControl", { "fg": s:purple })
-- call s:h("sassExtend", { "fg": s:purple })
-- call s:h("sassFor", { "fg": s:white })
-- call s:h("sassFunction", { "fg": s:cyan })
-- call s:h("sassId", { "fg": s:blue })
-- call s:h("sassInclude", { "fg": s:purple })
-- call s:h("sassMedia", { "fg": s:purple })
-- call s:h("sassMediaOperators", { "fg": s:white })
-- call s:h("sassMixin", { "fg": s:purple })
-- call s:h("sassMixinName", { "fg": s:blue })
-- call s:h("sassMixing", { "fg": s:purple })
-- call s:h("sassVariable", { "fg": s:purple })
--  -- https://github.com/cakebaker/scss-syntax.vim
-- call s:h("scssExtend", { "fg": s:purple })
-- call s:h("scssImport", { "fg": s:purple })
-- call s:h("scssInclude", { "fg": s:purple })
-- call s:h("scssMixin", { "fg": s:purple })
-- call s:h("scssSelectorName", { "fg": s:dark_yellow })
-- call s:h("scssVariable", { "fg": s:purple })

--  -- TeX
-- call s:h("texStatement", { "fg": s:purple })
-- call s:h("texSubscripts", { "fg": s:dark_yellow })
-- call s:h("texSuperscripts", { "fg": s:dark_yellow })
-- call s:h("texTodo", { "fg": s:dark_red })
-- call s:h("texBeginEnd", { "fg": s:purple })
-- call s:h("texBeginEndName", { "fg": s:blue })
-- call s:h("texMathMatcher", { "fg": s:blue })
-- call s:h("texMathDelim", { "fg": s:blue })
-- call s:h("texDelimiter", { "fg": s:dark_yellow })
-- call s:h("texSpecialChar", { "fg": s:dark_yellow })
-- call s:h("texCite", { "fg": s:blue })
-- call s:h("texRefZone", { "fg": s:blue })

--  -- TypeScript
-- call s:h("typescriptReserved", { "fg": s:purple })
-- call s:h("typescriptEndColons", { "fg": s:white })
-- call s:h("typescriptBraces", { "fg": s:white })

--  -- XML
-- call s:h("xmlAttrib", { "fg": s:dark_yellow })
-- call s:h("xmlEndTag", { "fg": s:red })
-- call s:h("xmlTag", { "fg": s:red })
-- call s:h("xmlTagName", { "fg": s:red })


--  -- Plugin Highlighting

-- -- easymotion/vim-easymotion
-- call s:h("EasyMotionTarget", { "fg": s:red, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionTarget2First", { "fg": s:yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionTarget2Second", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionShade",  { "fg": s:comment_grey })

 -- mhinz/vim-signify
Group.new('SignifySignAdd', colors.green, nil, no)
Group.new('SignifySignChange', colors.yellow, nil, no)
Group.new('SignifySignDelete', colors.red, nil, no)

--  -- neomake/neomake
-- call s:h("NeomakeWarningSign", { "fg": s:yellow })
-- call s:h("NeomakeErrorSign", { "fg": s:red })
-- call s:h("NeomakeInfoSign", { "fg": s:blue })

--  -- plasticboy/vim-markdown (keep consistent with Markdown, above)
-- call s:h("mkdDelimiter", { "fg": s:purple })
-- call s:h("mkdHeading", { "fg": s:red })
-- call s:h("mkdLink", { "fg": s:blue })
-- call s:h("mkdURL", { "fg": s:cyan, "gui": "underline", "cterm": "underline" })

--  -- tpope/vim-fugitive
-- call s:h("diffAdded", { "fg": s:green })
-- call s:h("diffRemoved", { "fg": s:red })


-- Git Highlighting
Group.new('gitcommitComment', colors.comment_grey, nil, no)
Group.new('gitcommitUnmerged', colors.green, nil, no)
Group.new('gitcommitOnBranch', nil, nil, no)
Group.new('gitcommitBranch', colors.purple, nil, no)
Group.new('gitcommitDiscardedType', colors.red, nil, no)
Group.new('gitcommitSelectedType', colors.green, nil, no)
Group.new('gitcommitHeader', nil, nil, no)
Group.new('gitcommitUntrackedFile', colors.cyan, nil, no)
Group.new('gitcommitDiscardedFile', colors.red, nil, no)
Group.new('gitcommitSelectedFile', colors.green, nil, no)
Group.new('gitcommitUnmergedFile', colors.yellow, nil, no)
Group.new('gitcommitFile', nil, nil, no)
Group.new('gitcommitSummary', colors.white, nil, no)
Group.new('gitcommitOverflow', colors.red, nil, no)
-- hi link gitcommitNoBranch gitcommitBranch
-- hi link gitcommitUntracked gitcommitComment
-- hi link gitcommitDiscarded gitcommitComment
-- hi link gitcommitSelected gitcommitComment
-- hi link gitcommitDiscardedArrow gitcommitDiscardedFile
-- hi link gitcommitSelectedArrow gitcommitSelectedFile
-- hi link gitcommitUnmergedArrow gitcommitUnmergedFile

