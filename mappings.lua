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
    ["?"] = { "?\v" },
    ["/"] = { "/\v" },
    ["%s"] = { "/\v" },
  },
  c = {
    ["%s"] = { "%sm/" },
  },
}
