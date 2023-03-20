local M = {}

function M.setup()
  local luasnip = require "luasnip"

  luasnip.config.set_config {
    history = false,
    updateevents = "TextChanged,TextChangedI",
  }

  require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/vsc_snippets/typescript"})
  require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/vsc_snippets/svelte"})
  require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/vsc_snippets/vue"})
  require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/vsc_snippets/markdown"})
  require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/vsc_snippets/json"})
  require("luasnip.loaders.from_snipmate").lazy_load()

  luasnip.filetype_extend("all", {"_"})
end

return M
