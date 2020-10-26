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
    use {'https://github.com/joshdick/onedark.vim', config = 'require("plugins.onedark")'} -- Atom OneDark
    use 'https://github.com/ryanoasis/vim-devicons' -- look at beauty icons
    use 'https://github.com/psliwka/vim-smoothie' -- Smooth scrolling for Vim done right🥤
    use 'https://github.com/camspiers/animate.vim' -- A Vim Window Animation Library

    -- Buffers
    use {'https://github.com/moll/vim-bbye', config = 'require("plugins.vim-bbye")'} -- Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
    use {'https://github.com/schickling/vim-bufonly', config = 'require("plugins.vim-bufonly")'} -- Delete all the buffers except the current buffer.

    -- Language Pack
    use 'https://github.com/sheerun/vim-polyglot' -- A collection of language packs for Vim.
    use {'https://github.com/nvim-treesitter/nvim-treesitter', config = 'require("plugins.treesitter")'}
    
    -- Editing
    use 'https://github.com/tpope/vim-repeat' -- Repeat.vim remaps . in a way that plugins can tap into it
    use {'https://github.com/tpope/vim-commentary', config = 'require("plugins.vim-commentary")'} -- Comment stuff out.

    -- Git
    use {
      'https://github.com/tpope/vim-fugitive',
      requires = 'https://github.com/shumphrey/fugitive-gitlab.vim', -- An extension to fugitive.vim for gitlab support
      config = 'require("plugins.vim-fugitive")',
    } -- fugitive.vim: A Git wrapper so awesome, it should be illegal

    -- General
    use 'https://github.com/myusuf3/numbers.vim' -- intelligently toggling line numbers
    use 'https://github.com/editorconfig/editorconfig-vim' -- EditorConfig plugin for Vim http://editorconfig.org
    use 'https://github.com/tpope/vim-unimpaired' -- complementary pairs of mappings. 
    use 'https://github.com/tpope/vim-eunuch' -- Vim sugar for the UNIX shell commands that need it the most.
    use 'https://github.com/tpope/vim-surround' -- ysiw' | ds{ds)  provides mappings to easily delete, change and add such surroundings in pairs
    use 'https://github.com/ConradIrwin/vim-bracketed-paste' -- Improve pasting code from the clipboard

    -- Snippets
    use 'https://github.com/honza/vim-snippets' -- snippets for various programming languages
    -- Intelephense Hotfix, see https://github.com/nvim-lua/completion-nvim/issues/252#issuecomment-716048547
    -- use 'https://github.com/norcalli/snippets.nvim' -- Intelephense Hotfix, see https://github.com/nvim-lua/completion-nvim/issues/252#issuecomment-716048547

    -- Sessions
    use {'https://github.com/mhinz/vim-startify', config = 'require("plugins.startify")'} -- This plugin provides a start screen for Vim and Neovim.

    -- Status Bar
    use {
      'https://github.com/itchyny/lightline.vim',
      config = 'require("plugins.lightline")',
      requires = {
        'https://github.com/mengelbrecht/lightline-bufferline', -- This plugin provides bufferline functionality for the lightline vim plugin.
        'https://github.com/ryanoasis/vim-devicons',
        'https://github.com/tpope/vim-fugitive',
      }
    } -- A light and configurable statusline/tabline plugin for Vim
   
    -- File management
    use {
      'https://github.com/preservim/nerdtree',
--      cmd = {'NERDTreeToggle', 'NERDTreeFind'},
      config = 'require("plugins.nerdtree")'
    } -- The NERDTree is a file system explorer for the Vim editor.
--    use 'https://github.com/Xuyuanp/nerdtree-git-plugin' -- A plugin of NERDTree showing git status flags.
--    use {'https://github.com/mbbill/undotree', cmd = 'UndotreeToggle'} -- Undo visualise

    -- Finding and replacing
    use {
      'https://github.com/liuchengxu/vim-clap',
      run = ':Clap install-binary!',
      config = 'require("plugins.vim-clap")',
    } -- Modern performant generic finder and dispatcher for Vim and NeoVim
    -- use 'https://github.com/haya14busa/incsearch.vim' -- incrementally highlights ALL pattern matches unlike default 'incsearch'.

    -- Completion and linting
    use {
      'https://github.com/neovim/nvim-lspconfig',
      config = 'require("plugins.lsp")',
      requires = {
        'https://github.com/nvim-lua/lsp-status.nvim',
        'https://github.com/nvim-lua/diagnostic-nvim',
        {
          'https://github.com/nvim-lua/completion-nvim',
          -- event = 'InsertEnter *',
          requires = {
            {
              'https://github.com/steelsojka/completion-buffers',
              -- event = 'InsertEnter *'
            },
            -- {'hrsh7th/vim-vsnip', event = 'InsertEnter *'},
            -- {'hrsh7th/vim-vsnip-integ', event = 'InsertEnter *'},
          }
        },
      }
    }

    -- Testing & debugging
    use 'https://github.com/tpope/vim-dispatch' -- Asynchronous build and test dispatcher
    use {'https://github.com/janko/vim-test', config = 'require("plugins.vim-test")' } -- Run your tests at the speed of thought
    -- use 'https://github.com/vim-vdebug/vdebug' -- Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
  end
}
