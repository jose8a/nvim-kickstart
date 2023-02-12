
## configs to maybe borrow from my previous Neovim setup


### other files to explore for additional configs

/Users/jose8a/.config/nvim-main/lua/
├── settings.lua
├── plugins.lua
└── config
    ├── lualine.lua
    ├── gitsigns.lua
    ├── treesitter.lua
    ├── telescope.lua
    ├── cmp.lua
    └── lsp.lua


### additional plugins to maybe install

> all plugins below taken from ~/.config/nvim-main/lua/plugins.lua

```lua
  -- Load first (startup speedup, common utils, etc)
  -- =============================================
  use {'lewis6991/impatient.nvim'}
  use {'nathom/filetype.nvim'}
  use { 'nvim-lua/plenary.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }

```

```lua
  -- Misc Utilities
  -- =============================================
  use { 'metakirby5/codi.vim' }
  use { 'norcalli/nvim-colorizer.lua', ... }
  use { 'windwp/nvim-autopairs', ... }
  use { 'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons', ... }
  use { 'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim', ... }
  use { 'folke/which-key.nvim', ... }
  use { 'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons', ... }
  use { 'tami5/lspsaga.nvim', ... }

  -- TODO: these are next to be installed
  use { 'p00f/nvim-ts-rainbow' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }

```

```lua
  -- MODERN COLOR THEMES
  -- =============================================
  use {
    'navarasu/onedark.nvim',              -- default for all but MD
    config = function()
      require('onedark').setup {
        style = 'deep'
      }
      require('onedark').load()
    end
  }

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

```

``` lua
  -- LEGACY VIM UTILITIES
  -- =============================================
  use { 'godlygeek/tabular' }
  use { 'tpope/vim-surround' }
  use { 'mattn/emmet-vim' }

```

``` lua
  -- TMUX
  -- =============================================
  use { 'christoomey/vim-tmux-navigator' }

```

``` lua
  -- Snippets
  -- TODO/FIXME: should these come before or after nvim-cmp if
  -- TODO/FIXME: .. nvim-cmp calls setup for any these below?
  -- =============================================
  use { 'SirVer/ultisnips' }
  use { 'honza/vim-snippets', rtp = '.' }
  use { 'quangnguyen30192/cmp-nvim-ultisnips', rtp = '.'}

```

``` lua
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lua' }

```

``` lua
  -- Telescope
  -- =============================================
  use { 'fhill2/telescope-ultisnips.nvim' }

```

``` lua
  -- non-Treesitter Markdown lang-tools
  -- =============================================
  -- use { 'vim-pandoc/vim-pandoc' }
  -- use { 'vim-pandoc/vim-pandoc-syntax' }
  use { 'preservim/vim-markdown' }
  use { 'Scuilion/markdown-drawer' }

  -- FIX: 2022.0105 - disable b/c currently
  -- causing MD LSP detection problem
  -- =============================================
  -- use { 'SidOfc/mkdx' }

```

``` lua
  -- TODO/FIXME: additional plugins to install next
  -- =============================================
  -- very nifty navigation / alternative to vim-sneak
  -- * [ ] .. use { 'ggandor/lightspeed.nvim' }
  -- ..
  -- view diffs for git-changes across multiple changed-files
  -- * [ ] .. use { 'sindrets/diffview.nvim' }
  -- ..
  -- improved selection of objects/subjects via treesitter
  -- * [ ] .. use { 'nvim-treesitter/nvim-treesitter-textobjects' }
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
```
