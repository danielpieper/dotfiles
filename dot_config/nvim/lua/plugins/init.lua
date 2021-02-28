-- Only required if you have packer in your `opt` pack
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
        return
    end

    local directory = string.format('%s/site/pack/packer/opt/',
                                    vim.fn.stdpath('data'))

    vim.fn.mkdir(directory, 'p')

    local out = vim.fn.system(string.format('git clone %s %s',
                                            'https://github.com/wbthomason/packer.nvim',
                                            directory .. '/packer.nvim'))

    print(out)
    print("Downloading packer.nvim...")

    return
end

return require('packer').startup {
    function(use)
        use {'https://github.com/wbthomason/packer.nvim', opt = true} -- Packer can manage itself as an optional plugin


        -- *****************************************
        -- Eye Candy
        -- *****************************************
        use {
            'https://github.com/kyazdani42/nvim-web-devicons',
            config = 'require("nvim-web-devicons").setup()'
        } -- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
        use {
            'https://github.com/joshdick/onedark.vim',
            disable = true,
            config = 'require("plugins.onedark")'
        } -- Atom OneDark
        use {
            'https://github.com/tjdevries/colorbuddy.nvim',
            requires = {
              'https://github.com/danielpieper/arcbuddy',
              branch = 'main',
              -- '~/projects/arcbuddy',
            }, -- An atom one inspired dark and light colorscheme
            config = 'require("colorbuddy").colorscheme("arcbuddy")',
        } -- A colorscheme helper for Neovim.  Written in Lua! Quick & Easy Color Schemes smile
        use 'https://github.com/psliwka/vim-smoothie' -- Smooth scrolling for Vim done right🥤
        use 'https://github.com/camspiers/animate.vim' -- A Vim Window Animation Library
        use {
            'https://github.com/norcalli/nvim-colorizer.lua',
            config = 'require("colorizer").setup()'
        } -- A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.


        -- *****************************************
        -- Language Specific
        -- *****************************************
        use {
            'https://github.com/sheerun/vim-polyglot',
            disable = true,
        } -- A collection of language packs for Vim.
        use {
            'https://github.com/nvim-treesitter/nvim-treesitter',
            config = 'require("plugins.treesitter")',
            run = ':TSUpdate'
        }
        use {
          'https://github.com/npxbr/glow.nvim',
          run = ':GlowInstall<CR>',
          config = 'require("utils").map("n", "<Leader>p", ":Glow<CR>", {silent=true})',
          cmd = 'Glow',
        } -- A glow preview directly in your neovim buffer. (markdown)


        -- *****************************************
        -- Git
        -- *****************************************
        use {
            'https://github.com/tpope/vim-fugitive',
            config = 'require("plugins.vim-fugitive")',
            requires = 'https://github.com/shumphrey/fugitive-gitlab.vim' -- An extension to fugitive.vim for gitlab support
        } -- fugitive.vim: A Git wrapper so awesome, it should be illegal
        use {
            'https://github.com/mhinz/vim-signify',
            config = 'require("plugins.vim-signify")'
            -- event = { 'BufReadPre', 'BufNewFile'},
        } -- Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).


        -- *****************************************
        -- General
        -- *****************************************
        use 'https://github.com/myusuf3/numbers.vim' -- intelligently toggling line numbers
        use {
            'https://github.com/editorconfig/editorconfig-vim',
            config = 'require("plugins.editorconfig-vim")'
        } -- EditorConfig plugin for Vim http://editorconfig.org
        use 'https://github.com/tpope/vim-unimpaired' -- complementary pairs of mappings.
        use 'https://github.com/tpope/vim-eunuch' -- Vim sugar for the UNIX shell commands that need it the most.
        use 'https://github.com/tpope/vim-surround' -- ysiw' | ds{ds)  provides mappings to easily delete, change and add such surroundings in pairs
        use 'https://github.com/ConradIrwin/vim-bracketed-paste' -- Improve pasting code from the clipboard
        use 'https://github.com/tpope/vim-repeat' -- Repeat.vim remaps . in a way that plugins can tap into it


        -- *****************************************
        -- Comments
        -- *****************************************
        use {
            'https://github.com/tpope/vim-commentary',
            disable = true,
            config = 'require("plugins.vim-commentary")'
        } -- Comment stuff out.
        use {
            'https://github.com/b3nj5m1n/kommentary',
            disable = false,
            config = 'require("plugins.kommentary")'
        } -- Neovim plugin to comment text in and out, written in lua. Supports commenting out the current line, a visual selection and a motion/textobject.
        use {
            'https://github.com/terrortylor/nvim-comment',
            disable = true,
            config = 'require("plugins.nvim-comment")'
        } -- A comment toggler for Neovim, written in Lua


        -- *****************************************
        -- Snippets
        -- *****************************************
        -- use 'https://github.com/honza/vim-snippets' -- snippets for various programming languages
        use {'https://github.com/norcalli/snippets.nvim',
            config = 'require("plugins.snippets")',
        } -- Intelephense Hotfix, see https://github.com/nvim-lua/completion-nvim/issues/252#issuecomment-716048547


        -- *****************************************
        -- Sessions
        -- *****************************************
        use {
            'https://github.com/mhinz/vim-startify',
            config = 'require("plugins.startify")'
        } -- This plugin provides a start screen for Vim and Neovim.


        -- *****************************************
        -- Status Bar
        -- *****************************************
        use {
            'https://github.com/itchyny/lightline.vim',
            disable = true,
            config = 'require("plugins.lightline")',
            requires = {
                'https://github.com/mengelbrecht/lightline-bufferline', -- This plugin provides bufferline functionality for the lightline vim plugin.
                'https://github.com/ryanoasis/vim-devicons',
                'https://github.com/tpope/vim-fugitive'
            }
        } -- A light and configurable statusline/tabline plugin for Vim
        use {
            'https://github.com/glepnir/galaxyline.nvim',
            disable = false,
            branch = 'main', -- see https://github.com/wbthomason/packer.nvim/issues/86
            config = 'require("plugins.galaxyline")',
            requires = {
                'https://github.com/kyazdani42/nvim-web-devicons', -- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
                'https://github.com/mhinz/vim-signify' -- Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).
            }
        } -- galaxyline componentizes vim's statusline, the text of each area is provided by a component.


        -- *****************************************
        -- Buffers
        -- *****************************************
        use {
            'https://github.com/moll/vim-bbye',
            disable = true,
            config = 'require("plugins.vim-bbye")',
        } -- Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.

        use {
            'https://github.com/akinsho/nvim-bufferline.lua',
            disable = true,
            config = 'require("plugins.nvim-bufferline")',
            requires = {
                'https://github.com/kyazdani42/nvim-web-devicons', -- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
                'https://github.com/moll/vim-bbye', -- Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
                'https://github.com/schickling/vim-bufonly', -- Delete all the buffers except the current buffer.
            }
        } -- A snazzy buffer line (with minimal tab integration) for Neovim built using lua.
        use {
            'https://github.com/romgrk/barbar.nvim',
            disable = false,
            config = 'require("plugins.barbar")',
            requires = {
                'https://github.com/kyazdani42/nvim-web-devicons', -- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
            }
        } -- Tabs, as understood by any other editor.


        -- *****************************************
        -- File management
        -- *****************************************
        use {
            'https://github.com/preservim/nerdtree',
            disable = true,
            config = 'require("plugins.nerdtree")',
            requires = {
                'https://github.com/Xuyuanp/nerdtree-git-plugin' -- A plugin of NERDTree showing git status flags.
            }
        } -- The NERDTree is a file system explorer for the Vim editor.
        use {
            'https://github.com/kyazdani42/nvim-tree.lua',
            config = 'require("plugins.nvim-tree")',
            requires = {
                'https://github.com/kyazdani42/nvim-web-devicons' -- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
            }
        } -- A File Explorer For Neovim Written In Lua
        use {
            'https://github.com/mbbill/undotree',
            config = 'require("plugins.undotree")',
        } -- Undo visualise


        -- *****************************************
        -- Finding and replacing
        -- *****************************************
        use {
            'https://github.com/liuchengxu/vim-clap',
            disable = true,
            run = ':Clap install-binary!',
            config = 'require("plugins.vim-clap")'
        } -- Modern performant generic finder and dispatcher for Vim and NeoVim
        use {
            'https://github.com/nvim-lua/telescope.nvim',
            disable = false,
            config = 'require("plugins.telescope")',
            requires = {
                'https://github.com/nvim-lua/plenary.nvim', -- All the lua functions I don't want to write twice.
                'https://github.com/nvim-lua/popup.nvim', -- [WIP] An implementation of the Popup API from vim in Neovim. Hope to upstream when complete
                'https://github.com/nvim-telescope/telescope-symbols.nvim', -- telescope-symbols provide its users with the ability of picking symbols and insert them at point.
                'https://github.com/danielpieper/telescope-tmuxinator.nvim', -- Integration for tmuxinator with telescope.nvim.
            }
        }
        use {
          'https://github.com/strboul/urlview.vim',
          disable = true, -- required netrw is disabled by settings.lua and nvim-tree?
          config = 'require("utils").map("n", "<F6>", ":Urlview<CR>", {silent=true})',
        } -- List and open URLs easily.


        -- *****************************************
        -- LanguageServer and Diagnostics
        -- *****************************************
        use {
            'https://github.com/neovim/nvim-lspconfig',
            config = 'require("plugins.nvim-lspconfig")',
            requires = {
                'https://github.com/nvim-lua/lsp-status.nvim', -- This is a Neovim plugin/library for generating statusline components from the built-in LSP client.
            }
        } -- This plugin handles automatically launching, initializing, and configuring language servers that are installed on your system.


        -- *****************************************
        -- Completion
        -- *****************************************
        use {
            'https://github.com/nvim-lua/completion-nvim',
            config = 'require("plugins.completion-nvim")',
            requires = {
                'https://github.com/steelsojka/completion-buffers', -- A buffer completion source for completion-nvim
                'https://github.com/norcalli/snippets.nvim', -- Intelephense Hotfix, see https://github.com/nvim-lua/completion-nvim/issues/252#issuecomment-716048547
            }
        } -- completion-nvim is an auto completion framework that aims to provide a better completion experience with neovim's built-in LSP.
        use {
            'https://github.com/kristijanhusak/vim-dadbod-completion',
            config = 'require("plugins.vim-dadbod-completion")',
            requires = {
                'https://github.com/tpope/vim-dadbod', -- Dadbod is a Vim plugin for interacting with databases.
                'https://github.com/nvim-lua/completion-nvim', -- completion-nvim is an auto completion framework that aims to provide a better completion experience with neovim's built-in LSP.
                'https://github.com/steelsojka/completion-buffers', -- A buffer completion source for completion-nvim
            }
        } -- Database auto completion powered by vim-dadbod.


        -- *****************************************
        -- Database
        -- *****************************************
        use {
            'https://github.com/kristijanhusak/vim-dadbod-ui',
            config = 'require("plugins.vim-dadbod-ui")',
            requires = {
                'https://github.com/tpope/vim-dadbod', -- Dadbod is a Vim plugin for interacting with databases.
            }
        } -- Simple UI for vim-dadbod. It allows simple navigation through databases and allows saving queries for later use.


        -- *****************************************
        -- Testing & debugging
        -- *****************************************
        use 'https://github.com/tpope/vim-dispatch' -- Asynchronous build and test dispatcher
        use {
            'https://github.com/janko/vim-test',
            config = 'require("plugins.vim-test")'
        } -- Run your tests at the speed of thought
        -- use 'https://github.com/vim-vdebug/vdebug' -- Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)


        -- *****************************************
        -- Crazy stuff
        -- *****************************************
        use {
            'https://github.com/glacambre/firenvim',
            run = '+call firenvim#install(0)',
            config = 'require("plugins.firenvim")'
        } -- Turn your browser into a Neovim client
    end
}
