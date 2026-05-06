return {
    "robitx/gp.nvim",
    config = function()
        local conf = {
          openai_api_key = { "cat", "/home/user/.openai" },
        }
    require("gp").setup(conf)
    end,
}
