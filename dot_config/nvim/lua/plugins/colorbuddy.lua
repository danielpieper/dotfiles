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

Color.new('red', '#e06c75')
Color.new('dark_red', '#be5046')
Color.new('green', '#98c379')
Color.new('yellow', '#e5c07b')
Color.new('dark_yellow', '#d19a66')
Color.new('blue', '#61afef')
Color.new('purple', '#c678dd')
Color.new('cyan', '#56b6c2')
Color.new('white', '#abb2bf')
Color.new('black100', '#1D1F21')
Color.new('black', '#1D1F21')
Color.new('visual_black', '#282c34')
Color.new('comment_grey', '#5C6370')
Color.new('gutter_fg_grey', '#4B5263')
Color.new('cursor_grey', '#1f2123')
Color.new('visual_grey', '#abb2bf')
Color.new('menu_grey', '#3E4452')
Color.new('special_grey', '#3B4048')
Color.new('vertsplit', '#181A1F')

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

-- Termdebug highlighting for Vim 8.1+

-- call s:h("debugPC", { "bg": s:special_grey }) " the current position
-- call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint

-- Language-Specific Highlighting

-- CSS
Group.new('cssAttrComma', colors.purple, nil, no)
Group.new('cssAttributeSelector', colors.green, nil, no)
Group.new('cssBraces', colors.white, nil, no)
Group.new('cssClassName', colors.dark_yellow, nil, no)
Group.new('cssClassNameDot', colors.dark_yellow, nil, no)
Group.new('cssDefinition', colors.purple, nil, no)
Group.new('cssFontAttr', colors.dark_yellow, nil, no)
Group.new('cssFontDescriptor', colors.purple, nil, no)
Group.new('cssFunctionName', colors.blue, nil, no)
Group.new('cssIdentifier', colors.blue, nil, no)
Group.new('cssImportant', colors.purple, nil, no)
Group.new('cssInclude', colors.white, nil, no)
Group.new('cssIncludeKeyword', colors.purple, nil, no)
Group.new('cssMediaType', colors.dark_yellow, nil, no)
Group.new('cssProp', colors.white, nil, no)
Group.new('cssPseudoClassId', colors.dark_yellow, nil, no)
Group.new('cssSelectorOp', colors.purple, nil, no)
Group.new('cssSelectorOp2', colors.purple, nil, no)
Group.new('cssTagName', colors.red, nil, no)

-- Fish Shell
Group.new('fishKeyword', colors.purple, nil, no)
Group.new('fishConditional', colors.purple, nil, no)

-- Go
Group.new('goDeclaration', colors.purple, nil, no)
Group.new('goBuiltins', colors.cyan, nil, no)
Group.new('goFunctionCall', colors.blue, nil, no)
Group.new('goVarDefs', colors.red, nil, no)
Group.new('goVarAssign', colors.red, nil, no)
Group.new('goVar', colors.purple, nil, no)
Group.new('goConst', colors.purple, nil, no)
Group.new('goType', colors.yellow, nil, no)
Group.new('goTypeName', colors.yellow, nil, no)
Group.new('goDeclType', colors.cyan, nil, no)
Group.new('goTypeDecl', colors.purple, nil, no)

-- HTML (keep consistent with Markdown, below)
Group.new('htmlArg', colors.dark_yellow, nil, no)
Group.new('htmlBold', colors.dark_yellow, nil, b)
Group.new('htmlEndTag', colors.white, nil, no)
Group.new('htmlH1', colors.red, nil, no)
Group.new('htmlH2', colors.red, nil, no)
Group.new('htmlH3', colors.red, nil, no)
Group.new('htmlH4', colors.red, nil, no)
Group.new('htmlH5', colors.red, nil, no)
Group.new('htmlH6', colors.red, nil, no)
Group.new('htmlItalic', colors.purple, nil, i)
Group.new('htmlLink', colors.cyan, nil, ul)
Group.new('htmlSpecialChar', colors.dark_yellow, nil, no)
Group.new('htmlSpecialTagName', colors.red, nil, no)
Group.new('htmlTag', colors.white, nil, no)
Group.new('htmlTagN', colors.red, nil, no)
Group.new('htmlTagName', colors.red, nil, no)
Group.new('htmlTitle', colors.white, nil, no)

-- JavaScript
Group.new('javaScriptBraces', colors.white, nil, no)
Group.new('javaScriptFunction', colors.purple, nil, no)
Group.new('javaScriptIdentifier', colors.purple, nil, no)
Group.new('javaScriptNull', colors.dark_yellow, nil, no)
Group.new('javaScriptNumber', colors.dark_yellow, nil, no)
Group.new('javaScriptRequire', colors.cyan, nil, no)
Group.new('javaScriptReserved', colors.purple, nil, no)
-- https://github.com/pangloss/vim-javascript
Group.new('jsArrowFunction', colors.purple, nil, no)
Group.new('jsClassKeyword', colors.purple, nil, no)
Group.new('jsClassMethodType', colors.purple, nil, no)
Group.new('jsDocParam', colors.blue, nil, no)
Group.new('jsDocTags', colors.purple, nil, no)
Group.new('jsExport', colors.purple, nil, no)
Group.new('jsExportDefault', colors.purple, nil, no)
Group.new('jsExtendsKeyword', colors.purple, nil, no)
Group.new('jsFrom', colors.purple, nil, no)
Group.new('jsFuncCall', colors.blue, nil, no)
Group.new('jsFunction', colors.purple, nil, no)
Group.new('jsGenerator', colors.yellow, nil, no)
Group.new('jsGlobalObjects', colors.yellow, nil, no)
Group.new('jsImport', colors.purple, nil, no)
Group.new('jsModuleAs', colors.purple, nil, no)
Group.new('jsModuleWords', colors.purple, nil, no)
Group.new('jsModules', colors.purple, nil, no)
Group.new('jsNull', colors.dark_yellow, nil, no)
Group.new('jsOperator', colors.purple, nil, no)
Group.new('jsStorageClass', colors.purple, nil, no)
Group.new('jsSuper', colors.red, nil, no)
Group.new('jsTemplateBraces', colors.dark_red, nil, no)
Group.new('jsTemplateVar', colors.green, nil, no)
Group.new('jsThis', colors.red, nil, no)
Group.new('jsUndefined', colors.dark_yellow, nil, no)
-- https://github.com/othree/yajs.vim
Group.new('javascriptArrowFunc', colors.purple, nil, no)
Group.new('javascriptClassExtends', colors.purple, nil, no)
Group.new('javascriptClassKeyword', colors.purple, nil, no)
Group.new('javascriptDocNotation', colors.purple, nil, no)
Group.new('javascriptDocParamName', colors.blue, nil, no)
Group.new('javascriptDocTags', colors.purple, nil, no)
Group.new('javascriptEndColons', colors.white, nil, no)
Group.new('javascriptExport', colors.purple, nil, no)
Group.new('javascriptFuncArg', colors.white, nil, no)
Group.new('javascriptFuncKeyword', colors.purple, nil, no)
Group.new('javascriptIdentifier', colors.red, nil, no)
Group.new('javascriptImport', colors.purple, nil, no)
Group.new('javascriptMethodName', colors.white, nil, no)
Group.new('javascriptObjectLabel', colors.white, nil, no)
Group.new('javascriptOpSymbol', colors.cyan, nil, no)
Group.new('javascriptOpSymbols', colors.cyan, nil, no)
Group.new('javascriptPropertyName', colors.green, nil, no)
Group.new('javascriptTemplateSB', colors.dark_red, nil, no)
Group.new('javascriptVariable', colors.purple, nil, no)

-- JSON
Group.new('jsonCommentError', colors.white, nil, no)
Group.new('jsonKeyword', colors.red, nil, no)
Group.new('jsonBoolean', colors.dark_yellow, nil, no)
Group.new('jsonNumber', colors.dark_yellow, nil, no)
Group.new('jsonQuote', colors.white, nil, no)
Group.new('jsonMissingCommaError', colors.red, nil, r)
Group.new('jsonNoQuotesError', colors.red, nil, r)
Group.new('jsonNumError', colors.red, nil, r)
Group.new('jsonString', colors.green, nil, no)
Group.new('jsonStringSQError', colors.red, nil, r)
Group.new('jsonSemicolonError', colors.red, nil, r)

-- LESS
Group.new('lessVariable', colors.purple, nil, no)
Group.new('lessAmpersandChar', colors.white, nil, no)
Group.new('lessClass', colors.dark_yellow, nil, no)

-- Markdown (keep consistent with HTML, above)
Group.new('markdownBlockquote', colors.comment_grey, nil, no)
Group.new('markdownBold', colors.dark_yellow, nil, b)
Group.new('markdownCode', colors.green, nil, no)
Group.new('markdownCodeBlock', colors.green, nil, no)
Group.new('markdownCodeDelimiter', colors.green, nil, no)
Group.new('markdownH1', colors.red, nil, no)
Group.new('markdownH2', colors.red, nil, no)
Group.new('markdownH3', colors.red, nil, no)
Group.new('markdownH4', colors.red, nil, no)
Group.new('markdownH5', colors.red, nil, no)
Group.new('markdownH6', colors.red, nil, no)
Group.new('markdownHeadingDelimiter', colors.red, nil, no)
Group.new('markdownHeadingRule', colors.comment_grey, nil, no)
Group.new('markdownId', colors.purple, nil, no)
Group.new('markdownIdDeclaration', colors.blue, nil, no)
Group.new('markdownIdDelimiter', colors.purple, nil, no)
Group.new('markdownItalic', colors.purple, nil, i)
Group.new('markdownLinkDelimiter', colors.purple, nil, no)
Group.new('markdownLinkText', colors.blue, nil, no)
Group.new('markdownListMarker', colors.red, nil, no)
Group.new('markdownOrderedListMarker', colors.red, nil, no)
Group.new('markdownRule', colors.comment_grey, nil, no)
Group.new('markdownUrl', colors.cyan, nil, ul)

-- Perl
Group.new('perlFiledescRead', colors.green, nil, no)
Group.new('perlFunction', colors.purple, nil, no)
Group.new('perlMatchStartEnd', colors.blue, nil, no)
Group.new('perlMethod', colors.purple, nil, no)
Group.new('perlPOD', colors.comment_grey, nil, no)
Group.new('perlSharpBang', colors.comment_grey, nil, no)
Group.new('perlSpecialString', colors.cyan, nil, no)
Group.new('perlStatementFiledesc', colors.red, nil, no)
Group.new('perlStatementFlow', colors.red, nil, no)
Group.new('perlStatementInclude', colors.purple, nil, no)
Group.new('perlStatementScalar', colors.purple, nil, no)
Group.new('perlStatementStorage', colors.purple, nil, no)
Group.new('perlSubName', colors.yellow, nil, no)
Group.new('perlVarPlain', colors.blue, nil, no)

-- PHP
Group.new('phpVarSelector', colors.red, nil, no)
Group.new('phpOperator', colors.white, nil, no)
Group.new('phpParent', colors.white, nil, no)
Group.new('phpMemberSelector', colors.white, nil, no)
Group.new('phpType', colors.purple, nil, no)
Group.new('phpKeyword', colors.purple, nil, no)
Group.new('phpClass', colors.yellow, nil, no)
Group.new('phpUseClass', colors.white, nil, no)
Group.new('phpUseAlias', colors.white, nil, no)
Group.new('phpInclude', colors.purple, nil, no)
Group.new('phpClassExtends', colors.green, nil, no)
Group.new('phpDocTags', colors.white, nil, no)
Group.new('phpFunction', colors.blue, nil, no)
Group.new('phpFunctions', colors.cyan, nil, no)
Group.new('phpMethodsVar', colors.dark_yellow, nil, no)
Group.new('phpMagicConstants', colors.dark_yellow, nil, no)
Group.new('phpSuperglobals', colors.red, nil, no)
Group.new('phpConstants', colors.dark_yellow, nil, no)

-- Ruby
Group.new('rubyBlockParameter', colors.red, nil, no)
Group.new('rubyBlockParameterList', colors.red, nil, no)
Group.new('rubyClass', colors.purple, nil, no)
Group.new('rubyConstant', colors.yellow, nil, no)
Group.new('rubyControl', colors.purple, nil, no)
Group.new('rubyEscape', colors.red, nil, no)
Group.new('rubyFunction', colors.blue, nil, no)
Group.new('rubyGlobalVariable', colors.red, nil, no)
Group.new('rubyInclude', colors.blue, nil, no)
Group.new('rubyIncluderubyGlobalVariable', colors.red, nil, no)
Group.new('rubyInstanceVariable', colors.red, nil, no)
Group.new('rubyInterpolation', colors.cyan, nil, no)
Group.new('rubyInterpolationDelimiter', colors.red, nil, no)
Group.new('rubyInterpolationDelimiter', colors.red, nil, no)
Group.new('rubyRegexp', colors.cyan, nil, no)
Group.new('rubyRegexpDelimiter', colors.cyan, nil, no)
Group.new('rubyStringDelimiter', colors.green, nil, no)
Group.new('rubySymbol', colors.cyan, nil, no)

-- Sass
-- https://github.com/tpope/vim-haml
Group.new('sassAmpersand', colors.red, nil, no)
Group.new('sassClass', colors.dark_yellow, nil, no)
Group.new('sassControl', colors.purple, nil, no)
Group.new('sassExtend', colors.purple, nil, no)
Group.new('sassFor', colors.white, nil, no)
Group.new('sassFunction', colors.cyan, nil, no)
Group.new('sassId', colors.blue, nil, no)
Group.new('sassInclude', colors.purple, nil, no)
Group.new('sassMedia', colors.purple, nil, no)
Group.new('sassMediaOperators', colors.white, nil, no)
Group.new('sassMixin', colors.purple, nil, no)
Group.new('sassMixinName', colors.blue, nil, no)
Group.new('sassMixing', colors.purple, nil, no)
Group.new('sassVariable', colors.purple, nil, no)
-- https://github.com/cakebaker/scss-syntax.vim
Group.new('scssExtend', colors.purple, nil, no)
Group.new('scssImport', colors.purple, nil, no)
Group.new('scssInclude', colors.purple, nil, no)
Group.new('scssMixin', colors.purple, nil, no)
Group.new('scssSelectorName', colors.dark_yellow, nil, no)
Group.new('scssVariable', colors.purple, nil, no)

-- TeX
Group.new('texStatement', colors.purple, nil, no)
Group.new('texSubscripts', colors.dark_yellow, nil, no)
Group.new('texSuperscripts', colors.dark_yellow, nil, no)
Group.new('texTodo', colors.dark_red, nil, no)
Group.new('texBeginEnd', colors.purple, nil, no)
Group.new('texBeginEndName', colors.blue, nil, no)
Group.new('texMathMatcher', colors.blue, nil, no)
Group.new('texMathDelim', colors.blue, nil, no)
Group.new('texDelimiter', colors.dark_yellow, nil, no)
Group.new('texSpecialChar', colors.dark_yellow, nil, no)
Group.new('texCite', colors.blue, nil, no)
Group.new('texRefZone', colors.blue, nil, no)

-- TypeScript
Group.new('typescriptReserved', colors.purple, nil, no)
Group.new('typescriptEndColons', colors.white, nil, no)
Group.new('typescriptBraces', colors.white, nil, no)

-- XML
Group.new('xmlAttrib', colors.dark_yellow, nil, no)
Group.new('xmlEndTag', colors.red, nil, no)
Group.new('xmlTag', colors.red, nil, no)
Group.new('xmlTagName', colors.red, nil, no)

-- Plugin Highlighting

-- easymotion/vim-easymotion
Group.new('EasyMotionTarget', colors.red, nil, b)
Group.new('EasyMotionTarget2First', colors.yellow, nil, b)
Group.new('EasyMotionTarget2Second', colors.dark_yellow, nil, b)
Group.new('EasyMotionShade', colors.comment_grey, nil, no)

-- mhinz/vim-signify
Group.new('SignifySignAdd', colors.green, nil, no)
Group.new('SignifySignChange', colors.yellow, nil, no)
Group.new('SignifySignDelete', colors.red, nil, no)

-- neomake/neomake
Group.new('NeomakeWarningSign', colors.yellow, nil, no)
Group.new('NeomakeErrorSign', colors.red, nil, no)
Group.new('NeomakeInfoSign', colors.blue, nil, no)

-- plasticboy/vim-markdown (keep consistent with Markdown, above)
Group.new('mkdDelimiter', colors.purple, nil, no)
Group.new('mkdHeading', colors.red, nil, no)
Group.new('mkdLink', colors.blue, nil, no)
-- call s:h("mkdURL", { "fg": s:cyan, "gui": "underline", "cterm": "underline" })

-- tpope/vim-fugitive
Group.new('diffAdded', colors.green, nil, no)
Group.new('diffRemoved', colors.red, nil, no)

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

