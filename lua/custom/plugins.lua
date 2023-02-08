-- -----------------------------------
-- NOTE:
-- from the kickstart.vim README:
-- .. create a separate custom.plugins module to
-- register your own plugins. In addition, you can
-- handle further customizations in
-- the /after/plugin/ directory
-- -----------------------------------

return function(use)
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
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
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#F2992F" },
        },
      }
    end
  }


  -- Misc Utilities
  -- =============================================
  use({
    "folke/which-key.nvim",
      config = function() require("which-key").setup() end
  })


  -- Git/Github Utilities
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function() require('neogit').setup {} end
  }

  -- Code-folding
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- nvim-ufo ... config-start
  -- TODO: move this config to its own file
  -- =============================================
  vim.o.foldcolumn = '1' -- '0' is not bad
  vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  vim.o.foldlevelstart = 99
  vim.o.foldenable = true

  -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
  vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
  vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

  -- Option 3: treesitter as a main provider instead
  -- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
  -- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
  --- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  require('ufo').setup({
      provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
      end
  })
  -- =============================================
  -- nvim-ufo ... config-end

  use { 'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'javascript';
        'css';
        html = {
          mode = 'foreground';
        }
      }
    end
  }

  use {
    'stevearc/oil.nvim',
    config = function() require('oil').setup() end
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to config section in folke/trouble README
      }
    end
  }

  use { 'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require("null-ls").setup {
        sources = {
            -- require("null-ls").builtins.formatting.stylua,
            require("null-ls").builtins.diagnostics.eslint,
            -- require("null-ls").builtins.completion.spell
        }
      }
    end
  }

  -- use { 'echasnovski/mini.nvim, ... }
  -- use { 'jackMort/pommodoro-clock.nvim, ... }
  -- use { 'aaronhallaert/continuous-testing.nvim, ... }
  -- use { '?? echasnovski/mini.nvim/blob/main/readmes/mini-move.md ??', ... }


  -- Snippets
  -- =============================================


  -- Completion
  -- =============================================


  -- Linting, Formatting, etc
  -- =============================================


  -- Telescope
  -- =============================================
  -- ... tbd


  -- Statusline
  -- =============================================
  -- ... tbd


  -- TMUX
  -- =============================================
  use { 'christoomey/vim-tmux-navigator' }

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


  -- 2023.0207 - added these
  use { 'talha-akram/noctis.nvim' }
  use { 'JoosepAlviste/palenightfall.nvim' }


  -- LEGACY COLOR THEMES
  -- =============================================
  use { 'zeis/vim-kolor' }
  use { 'NLKNguyen/papercolor-theme' }  -- markdown-only theme
  use { 'morhetz/gruvbox' }
  use { 'dracula/vim' }
end
