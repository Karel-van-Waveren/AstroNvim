return {
  settings = {
    ["rust-analyzer"] = {
      check = {
        overrideCommand = {
          "cargo",
          "clippy",
          "--workspace",
          "--message-format=json",
          "--all-targets",
          "--all-features",
          "--",
          "-W",
          "clippy::pedantic",
          -- "-W",
          -- "clippy::nursery",
          "-A",
          "clippy::missing-panics-doc",
          "-A",
          "clippy::missing-errors-doc",
          "-A",
          "clippy::cast-possible-truncation",
          "-A",
          "clippy::cast-sign-loss",
          "-A",
          "clippy::cast-precision-loss",
          "-A",
          "clippy::future_not_send",
        },
      },
      -- procMacro = {
      --   enable = true,
      -- },
      -- inlayHints = {
      --   locationLinks = false,
      -- },
      files = {
        excludeDirs = {
          "/Users/karel/.cargo/",
        },
      },
    },
  },
}
