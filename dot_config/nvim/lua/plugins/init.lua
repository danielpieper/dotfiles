-- Only required if you have packer in your `opt` pack
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
  ))

  print(out)
  print("Downloading packer.nvim...")

  return
end

return require('packer').startup {
  function (use)
    use {'https://github.com/wbthomason/packer.nvim', opt = true} -- Packer can manage itself as an optional plugin

    -- Eye Candy
    use 'https://github.com/joshdick/onedark.vim' -- Atom OneDark
    use 'https://github.com/ryanoasis/vim-devicons' -- look at beauty icons
    use 'https://github.com/psliwka/vim-smoothie' -- Smooth scrolling for Vim done right🥤
    use 'https://github.com/camspiers/animate.vim' -- A Vim Window Animation Library

    -- File management
    use {
      'https://github.com/preservim/nerdtree',
--      cmd = {'NERDTreeToggle', 'NERDTreeFind'},
      config = 'require("plugins.nerdtree")'
    } -- The NERDTree is a file system explorer for the Vim editor.
--    use 'https://github.com/Xuyuanp/nerdtree-git-plugin' -- A plugin of NERDTree showing git status flags.
--    use {'https://github.com/mbbill/undotree', cmd = 'UndotreeToggle'} -- Undo visualise

    -- Completion and linting
    use {
      'https://github.com/neovim/nvim-lspconfig',
      config = 'require("plugins.lsp")',
      requires = {
        'https://github.com/nvim-lua/lsp-status.nvim',
        'https://github.com/nvim-lua/diagnostic-nvim',
        {
          'https://github.com/nvim-lua/completion-nvim',
--          event = 'InsertEnter *',
          requires = {
            {'https://github.com/steelsojka/completion-buffers', event = 'InsertEnter *'},
--          {'hrsh7th/vim-vsnip', event = 'InsertEnter *'},
--          {'hrsh7th/vim-vsnip-integ', event = 'InsertEnter *'},
          }
        }
      }
    }
    use {'nvim-treesitter/nvim-treesitter', config = 'require("plugins.treesitter")'}
  end
}
