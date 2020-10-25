local wo = vim.wo
local o = vim.o
local bo = vim.bo
local g = vim.g
-- local home = vim.fn.expand("$XDG_CONFIG_HOME")

g.mapleader = ","

-- line numbers
wo.number = true
wo.relativenumber = true
wo.signcolumn = "number"

-- wo.colorcolumn = "80"
o.termguicolors = true

o.smartindent = true
bo.smartindent = true

o.tabstop = 2
bo.tabstop = 2

o.shiftwidth = 2
bo.shiftwidth = 2

-- Use spaces, not tabs
o.expandtab = true
bo.expandtab = true

o.updatetime = 50

-- Briefly move the cursor to the matching brace
o.showmatch = true

-- With :set hidden, opening a new file when the current buffer has unsaved
o.hidden = true

-- Don't wrap lines
wo.wrap = false

o.splitbelow = true
o.splitright = true

o.ignorecase = true
o.smartcase = true

o.clipboard = "unnamedplus"


-- Backup, undo, swap options
-- o.undofile = true
-- o.backup = true
-- o.writebackup = true
-- o.backupdir = home .. "/nvim/tmp/dir_backup/"
-- o.directory = home .. "/nvim/tmp/dir_swap/," .. o.directory
-- o.undodir = home .. "/nvim/tmp/dir_undo/"

-- Turn off swapfiles
o.swapfile = false
o.backup = false

-- Use `indent` based folding
o.foldmethod = "indent"

-- Disable all folds on file open until `zc` or `zM` etc is used
o.foldenable = false

-- Lazyredraw attempts to solve Vim lag by reducing the amount of
-- processing required. When enabled, any action that is not typed
-- will not cause the screen to redraw
-- TODO: syntax?
-- o.lazyredraw = true

-- Increase redraw time for large files ...
-- TODO: used? syntax?
-- o.redrawtime = 10000

-- Don't display the current mode (Insert, Visual, Replace)
-- in the status line. This info is already shown in the
-- Airline status bar.
-- TODO: used? syntax?
-- o.noshowmode = true

-- Stop vim trying to syntax highlight long lines, typically found in minified
-- files. This greatly reduces lag yet is still wide enough for large displays
o.synmaxcol = 500

-- Highlight current line
wo.cursorline = false

-- Smoother scrolling when moving horizontally
o.sidescroll = 1
