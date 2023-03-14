local M = {}

function M.setup()
  local neotest = require("neotest")
  local map_opts = { noremap = true, silent = true, nowait = true }

  vim.keymap.set(
    "n",
    "<localleader>tfr",
    function()
      neotest.run.run(vim.fn.expand("%"))
      neotest.summary.open()
    end,
    map_opts
  )

  vim.keymap.set(
    "n",
    "<localleader>tr",
    function()
      neotest.run.run()
      neotest.summary.open()
    end,
    map_opts
  )

  vim.keymap.set(
    "n",
    "<localleader>to",
    neotest.output.open
  )


  vim.keymap.set(
    "n",
    "<localleader>tt",
    function()
      neotest.summary.toggle()
    end,
    map_opts
  )

  vim.keymap.set(
    "n",
    "<localleader>tc",
    function()
      neotest.summary.close()
    end,
    map_opts
  )
end

return M
