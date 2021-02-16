local utils = require("utils")
local wo = vim.wo
local o = vim.o
local bo = vim.bo
local g = vim.g
local M = {}

function M.createdir()
  local data_dir = {
    'backup',
    'session',
    'swap',
    'tags',
    'undo'
  }
  for _,v in pairs(data_dir) do
    local d = utils.cache_dir .. utils.path_sep .. v
    if not utils.isdir(d) then
      os.execute("mkdir -p " .. d)
    end
  end
end

function M.disable_distribution_plugins()
  g.loaded_gzip              = 1
  g.loaded_tar               = 1
  g.loaded_tarPlugin         = 1
  g.loaded_zip               = 1
  g.loaded_zipPlugin         = 1
  g.loaded_getscript         = 1
  g.loaded_getscriptPlugin   = 1
  g.loaded_vimball           = 1
  g.loaded_vimballPlugin     = 1
  g.loaded_matchit           = 1
  g.loaded_matchparen        = 1
  g.loaded_2html_plugin      = 1
  g.loaded_logiPat           = 1
  g.loaded_rrhelper          = 1
  g.loaded_netrw             = 1
  g.loaded_netrwPlugin       = 1
  g.loaded_netrwSettings     = 1
  g.loaded_netrwFileHandlers = 1
end

function M.leader_map()
  g.mapleader = ","
  utils.map('n', ' ', '', {noremap = true})
  utils.map('x', ' ', '', {noremap = true})
end

function M.line_numbers()
  wo.number = true
  wo.relativenumber = true
  wo.signcolumn = "number"
end

-- Backup, undo, swap options
function M.backup()
  o.undofile = true
  o.backup = true
  o.writebackup = true
  o.backupdir = utils.cache_dir .. utils.path_sep .. 'backup'
  o.directory = utils.cache_dir .. utils.path_sep .. 'swap'
  o.undodir = utils.cache_dir .. utils.path_sep .. 'undo'
  o.undolevels = 1000
  o.undoreload = 10000
  o.backupskip = '/tmp/*,/private/tmp/*' -- Don’t create backups when editing files in certain directories
end

function M.other_settings()
  -- wo.colorcolumn = "80"
  o.termguicolors = true

  o.guifont = 'JetBrainsMono Nerd Font Mono:h20'

  o.autoindent = true
  bo.autoindent = true

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

  -- Add the g flag to search/replace by default
  o.gdefault = true

  -- With :set hidden, opening a new file when the current buffer has unsaved
  o.hidden = true

  -- Don't wrap lines
  wo.wrap = false

  o.splitbelow = true
  o.splitright = true

  o.ignorecase = true
  o.smartcase = true

  o.clipboard = "unnamedplus"

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

  -- Stop vim trying to syntax highlight long lines, typically found in minified
  -- files. This greatly reduces lag yet is still wide enough for large displays
  o.synmaxcol = 500

  -- Highlight current line
  wo.cursorline = false

  -- Smoother scrolling when moving horizontally
  o.sidescroll = 1

  -- Enable mouse with tmux
  o.mouse = 'a'

  o.listchars = [[tab:  ,extends:›,precedes:‹,nbsp:·,trail:·]]
  o.list = true

  -- TODO: how can i disable syntax from lua??? So far i put it in the init.vim...
  -- vim.api.nvim_set_option('syntax', 'off');
  -- o.syntax = "off"
  -- bo.syntax = "off"

  o.incsearch = true
end

function M.load_settings()
  M.createdir()
  M.disable_distribution_plugins()
  M.leader_map()
  M.backup()
  M.line_numbers()
  M.other_settings()
end

M.load_settings()
