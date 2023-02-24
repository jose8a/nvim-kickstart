
## Kickstart-only

require('packer').startup(function(use)
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'j-hui/fidget.nvim',
      'folke/neodev.nvim',
    },
  }

  -- CMP
    requires = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
  }

  -- Git related plugins
  use 'tpope/vim-rhubarb'

  use 'nvim-lualine/lualine.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-sleuth'

  -- Fuzzy Finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

end)


## Stable NV Version

  -- Load first (startup speedup, common utils, etc)
  -- =============================================
  use {'lewis6991/impatient.nvim'}
  use {'nathom/filetype.nvim'}
  use { 'nvim-lua/plenary.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }

  -- Misc Utilities
  -- =============================================
  -- use { 'metakirby5/codi.vim' }

  use { 'folke/which-key.nvim', ... }
  use { 'norcalli/nvim-colorizer.lua', ... }
  use { 'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons', ... }
  use { 'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim', ... }

  use { 'windwp/nvim-autopairs', ... }

  use { 'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons', ... }

  use { 'tami5/lspsaga.nvim', ... }

  -- TODO: these are next to be installed
  -- use { 'p00f/nvim-ts-rainbow' }

  use { 'JoosepAlviste/nvim-ts-context-commentstring' }

  -- MODERN COLOR THEMES
  -- =============================================
  use { 'rebelot/kanagawa.nvim' }
  use { 'folke/tokyonight.nvim' }
  use { 'tiagovla/tokyodark.nvim' }
  use { 'sainnhe/sonokai' }
  use { 'ray-x/aurora' }

  -- LEGACY COLOR THEMES
  -- =============================================
  use { 'zeis/vim-kolor' }
  use { 'NLKNguyen/papercolor-theme' }  -- markdown-only theme
  use { 'morhetz/gruvbox' }
  use { 'dracula/vim' }

  -- LEGACY VIM UTILITIES ???
  -- =============================================
  use { 'godlygeek/tabular' }
  use { 'tpope/vim-surround' }
  use { 'mattn/emmet-vim' }


  -- TMUX
  -- =============================================
  use { 'christoomey/vim-tmux-navigator' }


  -- Language Parsers
  -- =============================================
  use { 'neovim/nvim-lspconfig', ... }


  -- Snippets
  -- TODO/FIXME: should these come before or after nvim-cmp if
  -- TODO/FIXME: .. nvim-cmp calls setup for any these below?
  -- =============================================
  use { 'SirVer/ultisnips' }
  use { 'honza/vim-snippets', rtp = '.' }
  use { 'quangnguyen30192/cmp-nvim-ultisnips', rtp = '.'}


  -- Completion
  -- TODO/FIXME: debug/edit/add the existing `nvim-cmp` config
  -- =============================================
    requires = { "quangnguyen30192/cmp-nvim-ultisnips", ... }

  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lua' }


  -- Telescope
  -- =============================================
  use { 'fhill2/telescope-ultisnips.nvim' }


  -- Statusline
  -- =============================================
  use { 'hoob3rt/lualine.nvim', ... }


  -- FIX: additional plugins to install next
  -- =============================================
  -- very nifty navigation / alternative to vim-sneak
  -- * [ ] .. use { 'ggandor/lightspeed.nvim' }
  -- ..
  -- view diffs for git-changes across multiple changed-files
  -- * [ ] .. use { 'sindrets/diffview.nvim' }
  -- ..
  -- improved selection of objects/subjects via treesitter
  -- * [ ] .. use { 'RRethy/nvim-treesitter-textsubjects' }
  -- ..
  -- adds ts-syntax-highlighting to 'function' arguments
  -- * [ ] .. use { 'm-demare/hlargs.nvim' }
  -- ..
  -- utils to improve TS dev w/NV LSP
  -- * [ ] .. use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
  -- ..
  -- vim.ui interfaces - improve the defaults
  -- * [ ] .. use { 'stevearc/dressing.nvim' }



## Inbox

---
> neovim plugins - add to "install next list"

* [`[x] yes, now`: diffview.nvim: Single tabpage interface for easily cycling through diffs for all modified files for any git rev.](https://github.com/sindrets/diffview.nvim)
* [`[x] yes, now`: kevinhwang91/nvim-ufo: Not UFO in the sky, but an ultra fold in Neovim.](https://github.com/kevinhwang91/nvim-ufo)
* [`yes, now`: stevearc/oil.nvim: Neovim file explorer: edit your filesystem like a buffer](https://github.com/stevearc/oil.nvim)
* [`yes, now`: trouble.nvim: diagnostics, refs, telescope results, quickfix and location list ..](https://github.com/folke/trouble.nvim)
* ..
* [`yes, now`: talha-akram/noctis.nvim: Neovim port of noctis family of themes (https://github.com/liviuschera/noctis)](https://github.com/talha-akram/noctis.nvim)
* [`yes, now`: tokyonight.nvim: clean, dark Neovim theme .. w/many, many plugins support](https://github.com/folke/tokyonight.nvim)
* [`yes, now`: JoosepAlviste/palenightfall.nvim: 🌑 Neovim theme inspired by material palenight.](https://github.com/JoosepAlviste/palenightfall.nvim)
* [`yes, now`: jcdickinson/wpm.nvim: A quick and dirty WPM calculator for your UI needs](https://github.com/jcdickinson/wpm.nvim)
* ..
* [`yes, soon`: pommodoro-clock.nvim: yet another pommodoro neovim plugin that displays an ASCII timer in an overlay](https://github.com/jackMort/pommodoro-clock.nvim)
* [`yes, soon`: aaronhallaert/continuous-testing.nvim](https://github.com/aaronhallaert/continuous-testing.nvim)
* [`yes, soon`: luukvbaal/statuscol.nvim: Status column plugin that provides a configurable 'statuscolumn' and click handlers.](https://github.com/luukvbaal/statuscol.nvim)
* [`yes, soon`: TimUntersberger/neogit: magit for neovim](https://github.com/TimUntersberger/neogit)
* ..
* [`l8r`: gennaro-tedesco/nvim-possession: 📌 the no-nonsense session manager](https://github.com/gennaro-tedesco/nvim-possession)
* [`l8r`: kiyoon/jupynium.nvim: Selenium-automated Jupyter Notebook that is synchronised with NeoVim in real-time.](https://github.com/kiyoon/jupynium.nvim)
* [`l8r`: r/nvim: Jupynium.nvim: Control Jupyter NB inside nvim w/Selenium](https://www.reddit.com/r/neovim/comments/109j0rs/jupyniumnvim_control_jupyter_notebook_inside/)
* [`l8r`: null-ls.nvim: Use Neovim as a lang server to inject LSP diagnostics, code actions, and more via Lua.](https://github.com/jose-elias-alvarez/null-ls.nvim)
* [`l8r`: mini.nvim: Lib of 20+ independent Lua modules improving overall nvim (v0.6 and up) experience w/min effort](https://github.com/echasnovski/mini.nvim)
* [`l8r`: mini.nvim/mini-move.md at main · echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-move.md)
* [`l8r`: nvim-lint: An asynchronous linter plugin for Neovim complementary to the built-in Language Server Protocol support.](https://github.com/mfussenegger/nvim-lint)
* [`l8r`: lalitmee/browse.nvim: browse for anything using your choice of method](https://github.com/lalitmee/browse.nvim)
* ..
* [`not-yet`: utilyre/barbecue.nvim: A VS Code like winbar for Neovim](https://github.com/utilyre/barbecue.nvim)
* [`not-yet`: romgrk/barbar.nvim: The neovim tabline plugin.](https://github.com/romgrk/barbar.nvim)
* [`not-yet`: hydrovim: Run python code inside Neovim](https://github.com/smzm/hydrovim)
* [`not-yet`: -- starter/lazy.lua at main · LazyVim/starter](https://github.com/LazyVim/starter/blob/main/lua/config/lazy.lua)
* ..
* [`maybe-never`: Unofficial Neovim-Native Codeium Plugin : neovim](https://www.reddit.com/r/neovim/comments/10o27p3/unofficial_neovimnative_codeium_plugin/)
* [`maybe-never`: jcdickinson/codeium.nvim: A native neovim extension for Codeium](https://github.com/jcdickinson/codeium.nvim)
* [`maybe-never`: vimpostor/vim-tpipeline: Embed your vim statusline in tmux](https://github.com/vimpostor/vim-tpipeline)
* ..
* ..
* [What is your workflow for code navigation? : neovim](https://www.reddit.com/r/neovim/comments/1093kvm/what_is_your_workflow_for_code_navigation/)
* [r/neovim: Using prettier with neovim .](https://www.reddit.com/r/neovim/comments/upqbe3/using_prettier_with_neovim/)
* [TomDeneire/neovimmm: GitHub's 1000 top Neovim repositories](https://github.com/TomDeneire/neovimmm#readme)
* [[Linux.conf.au 2013] - Git For Ages 4 And Up - YouTube](https://www.youtube.com/watch?v=1ffBJ4sVUb4&t=5982s)
* [Git's Best And Most Unknown Feature - YouTube](https://www.youtube.com/watch?v=2uEqYw-N8uE)
* ..


---
> telescope extensions

* ..
* [telescope-repo.nvim | Clément Joly – Software Engineer](https://cj.rs/telescope-repo-nvim/)
* [Extensions - telescope.nvim Wiki](https://github.com/nvim-telescope/telescope.nvim/wiki/Extensions)
* [neovim telescope tutorial - Google Search](https://www.google.com/search?q=neovim+telescope+tutorial)
* ..
* [`yes, now`: telescope-fzf-native.nvim: FZF sorter for telescope written in c](https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-fzf-nativenvim)
* [`yes, now`: telescope-file-browser.nvim: File Browser extension for telescope.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
* [`yes, now`: nvim-telescope/telescope-arecibo.nvim: A Neovim Telescope extension for searching the web!](https://github.com/nvim-telescope/telescope-arecibo.nvim)
* [`yes, now`: nvim-telescope/telescope-github.nvim: Integration with github cli](https://github.com/nvim-telescope/telescope-github.nvim)
* ..
* [`yes, soon`: telescope-tabs: Fly through your tabs in nvim ✈️](https://github.com/LukasPietzschmann/telescope-tabs)
* [`yes, soon`: telescope-bookmarks.nvim: telescope ext to open browser bookmarks right from the editor!](https://github.com/dhruvmanila/telescope-bookmarks.nvim)
* [`yes, soon`: telescope-tasks.nvim: Run and preview definitions and outputs of tasks from a telescope prompt](https://github.com/lpoto/telescope-tasks.nvim)
* [`yes, soon`: octo.nvim: Edit and review GitHub issues and pull requests from the comfort of your favorite editor](https://github.com/pwntester/octo.nvim)
* [`yes, soon`: easypick.nvim: A neovim plugin that lets you easily create Telescope pickers from arbitrary console commands](https://github.com/axkirillov/easypick.nvim)
* ..
* ..
* [`l8r`: jvgrootveld/telescope-zoxide: An extension for telescope.nvim that allows you operate zoxide within Neovim.](https://github.com/jvgrootveld/telescope-zoxide)
* [`l8r`: telescope-repo.nvim: Jump into the repos (git, mercurial…) of your filesystem w/telescope.nvim, without any setup](https://github.com/cljoly/telescope-repo.nvim)
* [`l8r`: nvim-neoclip.lua: Clipboard manager neovim plugin with telescope integration](https://github.com/AckslD/nvim-neoclip.lua)
* [`l8r`: telescope-docker.nvim: Manage containers, images and compose files with no effort](https://github.com/lpoto/telescope-docker.nvim)
* ..

