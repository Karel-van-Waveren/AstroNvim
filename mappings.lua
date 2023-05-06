return {
  n = {
    -- Center search centered
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["*"] = { "*zz" },
    ["#"] = { "#zz" },
    ["g*"] = { "g*zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<C-d>"] = { "<C-d>zz" },
    -- Very magic by default
    ["?"] = { "?\\v" },
    ["/"] = { "/\\v" },
    ["%s"] = { "/\\v" },
    -- Open Alpha Automatically When No More Buffers
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
  },
  c = {
    ["%s"] = { "%sm/" },
  },
}
