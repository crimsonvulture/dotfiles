local function setup_mappings()
  local wk = require("which-key")

  local mappings = {
    ["<leader>"] = {
      n = { ":NvimTreeToggle<CR>", "Open File Tree" },
      f = { ":Telescope find_files<CR>", "Find File" },
      -- ... additional mappings
    },
  }

  local opts = {
    -- your options here, if any
  }

  wk.register(mappings, opts)
end

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = setup_mappings,
  opts = {}
}
