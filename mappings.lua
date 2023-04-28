return {
  n = {
    -- Center search centered
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["*"] = { "*zz" },
    ["#"] = { "#zz" },
    ["g*"] = { "g*zz" },

    -- Very magic by default
    ["?"] = { "?\v" },
    ["/"] = { "/\v" },
    ["%s"] = { "/\v" },
  },
  c = {
    ["%s"] = { "%sm/" },
  },
}
