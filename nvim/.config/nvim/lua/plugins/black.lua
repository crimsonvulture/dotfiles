return {
  "psf/black",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }

    opts.desc = "Run Black"
    keymap.set("n", "<leader>b", "<cmd>Black<CR>", opts)
  end,
  opts = {}
}
