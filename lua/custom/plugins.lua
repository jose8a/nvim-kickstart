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

  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })
  --
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

  -- LEGACY COLOR THEMES
  -- =============================================
  use { 'zeis/vim-kolor' }
  use { 'NLKNguyen/papercolor-theme' }  -- markdown-only theme
  use { 'morhetz/gruvbox' }
  use { 'dracula/vim' }
end
