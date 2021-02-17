local utils = require("utils")
local g = vim.g

g.firenvim_config = {
  globalSettings = {
    alt = 'all',
  },
  localSettings = {
    [".*atlassian\\.net.*"] = {
      cmdline = 'neovim',
      content = 'html',
      selector = 'div.ak-editor-content-area div[contenteditable="true"]',
      takeover = 'never',
    },
    [".*"] = {
      takeover = 'never',
    },
  }
}

utils.map("v", "<leader>mh", "!pandoc -f markdown -t html - -o - | prettier --parser html<CR>", {silent = true})
utils.map("v", "<leader>hm", "!pandoc -f html -t markdown - -o - | prettier --parser markdown<CR>", {silent = true})

utils.augroup(
  'firenvim',
  function ()
    vim.cmd([[
function! s:IsFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif
  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') && l:ui.client.name =~? 'Firenvim'
endfunction

function! SetLines(timer) abort
    let wheight = winheight(0)
    if wheight < 20
      set lines=20
    elseif wheight > 50
      set lines=50
    endif

    let wwidth = winwidth(0)
    if wwidth < 40
      set columns=40
    elseif wwidth > 100
      set columns=100
    endif

    set wrap
endfunction

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set laststatus=0
    call timer_start(800, function("SetLines"))
    autocmd BufEnter *atlassian.net_*.txt set filetype=html
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
    ]])
  end
)
