return {
  "airblade/vim-gitgutter",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }
    opts.desc = "Goto next hunk"
    keymap.set("n", "[h", "<cmd>GitGutterNextHunk<CR>", opts)

    opts.desc = "Goto previous hunk"
    keymap.set("n", "]h", "<cmd>GitGutterPrevHunk<CR>", opts)
  end,
  opts = {}
}
