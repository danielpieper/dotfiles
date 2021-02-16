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
  }
}
