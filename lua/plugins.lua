
-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      {
        'folke/neodev.nvim',
        config = function()
          require("neodev").setup {
            library = { plugins = { "neotest" }, types = true },
          }
        end
      }
    },
  },

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },
  { -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  { -- Theme inspired by Atom
    'JoosepAlviste/palenightfall.nvim',
    -- 'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'palenightfall'
    end,
  },

  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'palenight',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
  --       These are some example plugins that I've included in the kickstart repository.
  --       Uncomment any of the lines below to enable them.
  -- require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',

  -- NOTE: The import below automatically adds your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  -- { import = 'custom.plugins' },


  -- =============================================
  -- Begin custom (non-nvim-kickstart) plugins
  -- =============================================
  { 'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('todo-comments').setup {
        -- use the default settings
        keywords = {
          FIX = {
            icon = " ", -- used for sign, and w/search results
            color = "error", -- hex color, or named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of
              -- other keywords that all map to this FIX keywords
            -- signs = false, -- configure signs for some keywords individually
          },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX", "DOVE" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = ">", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
        highlight = {
          -- uses treesitter to match keywords in comments only if value = true
          comments_only = false,
        },
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#F2992F" },
        },
      }
    end,
  },


  -- Misc Utilities
  -- =============================================
  -- Lazy-Kickstart has this in the init.lua, so not needed here anymore
  -- use({
  --   "folke/which-key.nvim",
  --     config = function() require("which-key").setup() end
  -- })


  -- Git/Github Utilities
  { 'sindrets/diffview.nvim', dependencies = { 'nvim-lua/plenary.nvim'} },
  { 'TimUntersberger/neogit', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },


  -- Code-folding
  { 'kevinhwang91/nvim-ufo',
    dependencies = {'kevinhwang91/promise-async'},
    config = function()
      require('ufo').setup {
        provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
        end
      }
    end,
  },


  { 'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'javascript';
        'css';
        'svelte';
        'vue';
        html = {
          mode = 'foreground';
        }
      }
    end,
  },

  { 'stevearc/oil.nvim', opts = {} },
  { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },

  { 'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require("null-ls").setup {
        sources = {
            require("null-ls").builtins.formatting.eslint,
            require("null-ls").builtins.formatting.rustywind.with({
                filetypes = { "svelte" }
            }),
            -- require("null-ls").builtins.formatting.stylua,
            -- require("null-ls").builtins.completion.spell
        }
      }
    end,
  },


  -- [[
  -- [[ { 'echasnovski/mini.nvim, ... },
  -- [[ { 'jackMort/pommodoro-clock.nvim, ... },
  -- [[ { 'aaronhallaert/continuous-testing.nvim, ... },
  -- [[ { '?? echasnovski/mini.nvim/blob/main/readmes/mini-move.md ??', ... },
  -- [[


  -- Snippets
  -- =============================================


  -- Completion
  -- =============================================


  -- Linting, Formatting, etc
  -- =============================================


  -- Database
  -- =============================================
  -- ... tbd
  { 'tpope/vim-dadbod',
    dependencies = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },

    config = function()
      require("plugins.dadbod").setup()
    end,
    cmd = {
      "DBUIToggle",
      "DBUI",
      "DBUIAddConnection",
      "DBUIFindBuffer",
      "DBUIRenameBuffer",
      "DBUILastQueryInfo",
    },
  },


  -- Docs
  -- =============================================
  -- ... tbd
  {
      "danymat/neogen",
      dependencies = "nvim-treesitter/nvim-treesitter",
      -- config = true,
      config = function()
        require('neogen').setup {
          snippet_engine = "luasnip"
        }
      end,

      -- Uncomment next line if you want to follow only stable versions
      version = "*"
  },


  -- Testing
  -- =============================================
  -- ... tbd
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim',
      'marilari88/neotest-vitest',
      'nvim-neotest/neotest-python',
      'rouge8/neotest-rust',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require('neotest-vitest'),
          require('neotest-python'),
          require('neotest-rust')
        }
      }
      require("plugins.neotest").setup()
    end
  },


  -- Statusline
  -- =============================================
  -- ... tbd


  -- TMUX
  -- =============================================
  'christoomey/vim-tmux-navigator',

  -- MODERN COLOR THEMES
  -- =============================================
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
        style = 'deep'
      }
    end
  },

  'rebelot/kanagawa.nvim',
  'tiagovla/tokyodark.nvim',
  'sainnhe/sonokai',
  'ray-x/aurora',


  -- 2023.0207 - added these
  'talha-akram/noctis.nvim',
  'folke/tokyonight.nvim',
  'JoosepAlviste/palenightfall.nvim',

  -- 2023.0310 - added these
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'embark-theme/vim', name = 'embark' },
  { 'NTBBloodbath/sweetie.nvim', name = 'sweetie' },


  -- LEGACY COLOR THEMES
  -- =============================================
  'zeis/vim-kolor',
  'NLKNguyen/papercolor-theme',  -- markdown-only theme
  'morhetz/gruvbox',
  'dracula/vim',


  -- MISC Goodies
  -- =============================================
  'nvim-tree/nvim-web-devicons',
  { 'ziontee113/color-picker.nvim',
      config = function()
          require('color-picker')
      -- TODO: add configuration opts shown in the repo
      end,
  },
}, {})



  -- Misc Utilities
  -- =============================================

-- [[  use { 'windwp/nvim-autopairs', ... }
-- [[  use { 'tami5/lspsaga.nvim', ... }
-- [[
-- [[  -- TODO: these are next to be installed
-- [[  -- use { 'p00f/nvim-ts-rainbow' }
-- [[
-- [[  use { 'JoosepAlviste/nvim-ts-context-commentstring' }


  -- LEGACY VIM UTILITIES ???
  -- =============================================
-- [[  use { 'godlygeek/tabular' }
-- [[  use { 'tpope/vim-surround' }
-- [[  use { 'mattn/emmet-vim' }


  -- Snippets
  -- TODO/FIXME: should these come before or after nvim-cmp if
  -- TODO/FIXME: .. nvim-cmp calls setup for any these below?
  -- =============================================
--
-- [[  use { 'SirVer/ultisnips' }
-- [[  use { 'honza/vim-snippets', rtp = '.' }
-- [[  use { 'quangnguyen30192/cmp-nvim-ultisnips', rtp = '.'}
-- [[
-- [[
-- [[  use { 'hrsh7th/cmp-buffer' }
-- [[  use { 'hrsh7th/cmp-path' }
-- [[  use { 'hrsh7th/cmp-cmdline' }
-- [[  use { 'hrsh7th/cmp-nvim-lua' }


  -- Telescope
  -- =============================================
-- [[  use { 'fhill2/telescope-ultisnips.nvim' }


-- [[
-- [[  -- FIX: additional plugins to install next
-- [[  -- =============================================
-- [[
-- [[  -- very nifty navigation / alternative to vim-sneak
-- [[  -- * [ ] .. use { 'ggandor/lightspeed.nvim' }
-- [[  -- ..
-- [[  -- improved selection of objects/subjects via treesitter
-- [[  -- * [ ] .. use { 'RRethy/nvim-treesitter-textsubjects' }
-- [[  -- ..
-- [[  -- adds ts-syntax-highlighting to 'function' arguments
-- [[  -- * [ ] .. use { 'm-demare/hlargs.nvim' }
-- [[  -- ..
-- [[  -- utils to improve TS dev w/NV LSP
-- [[  -- * [ ] .. use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
-- [[  -- ..
-- [[  -- vim.ui interfaces - improve the defaults
-- [[  -- * [ ] .. use { 'stevearc/dressing.nvim' }
-- [[

