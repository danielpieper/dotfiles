local utils = require("utils")
local g = vim.g

-- Default trigger: <apple>E
-- see https://github.com/glacambre/firenvim/wiki/Filetypes-for-websites-&-more

-- takeover that can be set to always, empty, never, nonempty or once

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
      cmdline = 'firenvim',
      priority = 0,
      selector = 'textarea:not([readonly]):not([class="handsontableInput"]), div[role="textbox"]',
      takeover = 'once',
    },
    [".*notion\\.so.*"] = {
      priority = 9,
      takeover = 'never',
    },
    [".*docs\\.google\\.com.*"] = {
      priority = 9,
      takeover = 'never'
    },
  }
}

utils.map("v", "<leader>mh", "!pandoc -f markdown -t html - -o - | prettier --parser html<CR>set filetype=html<CR>", {silent = true})
utils.map("v", "<leader>hm", "!pandoc -f html -t markdown - -o - | prettier --parser markdown<CR>set filetype=markdown<CR>", {silent = true})

-- vim.cmd([[
-- function! HtmlToMarkdown()
--   silent !pandoc -f html -t markdown - -o - | prettier --parser markdown
--   set filetype=markdown
-- endfunction

-- function! MarkdownToHtml()
--   silent !pandoc -f markdown -t html - -o - | prettier --parser html
--   set filetype=html
-- endfunction
-- ]])

-- utils.map("v", "<leader>mh", "!call MarkdownToHtml()<CR>", {silent = true})
-- utils.map("v", "<leader>hm", "!call HtmlToMarkdown()<CR>", {silent = true})

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

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set laststatus=0
    autocmd BufEnter *atlassian.net_*.txt set filetype=html
    autocmd BufEnter *gitlab.*.txt set filetype=markdown
    autocmd BufEnter *github.*.txt set filetype=markdown
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
    ]])
  end
)

-- utils.augroup(
--   'firenvim',
--   function ()
--     vim.cmd([[
-- function! s:IsFirenvimActive(event) abort
--   if !exists('*nvim_get_chan_info')
--     return 0
--   endif
--   let l:ui = nvim_get_chan_info(a:event.chan)
--   return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') && l:ui.client.name =~? 'Firenvim'
-- endfunction

-- function! SetLines(timer) abort
--     let wheight = winheight(0)
--     if wheight < 20
--       set lines=20
--     elseif wheight > 50
--       set lines=50
--     endif

--     let wwidth = winwidth(0)
--     if wwidth < 40
--       set columns=40
--     elseif wwidth > 100
--       set columns=100
--     endif

--     set wrap
-- endfunction

-- function! OnUIEnter(event) abort
--   if s:IsFirenvimActive(a:event)
--     set laststatus=0
--     call timer_start(800, function("SetLines"))
--     autocmd BufEnter *atlassian.net_*.txt set filetype=html
--     autocmd BufEnter *gitlab.*.txt set filetype=markdown
--     autocmd BufEnter *github.*.txt set filetype=markdown
--   endif
-- endfunction
-- autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
--     ]])
--   end
-- )
