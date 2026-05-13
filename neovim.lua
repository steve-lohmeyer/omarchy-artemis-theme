return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0A0F1F",
        dark_bg    = "#080b17",
        darker_bg  = "#050810",
        lighter_bg = "#232735",

        fg         = "#FFFFFF",
        dark_fg    = "#bfbfbf",
        light_fg   = "#ffffff",
        bright_fg  = "#ffffff",
        muted      = "#FF4F00",

        red        = "#647cb4",
        yellow     = "#5A6A8A",
        orange     = "#7b90bf",
        green      = "#87a1c4",
        cyan       = "#F8F8FA",
        blue       = "#B0B8D0",
        purple     = "#F0F0F5",
        brown      = "#4a5673",

        bright_red    = "#FF7A3F",
        bright_yellow = "#A0D070",
        bright_green  = "#E8B050",
        bright_cyan   = "#50E0E0",
        bright_blue   = "#60B0FF",
        bright_purple = "#FF4F00",

        accent               = "#B0B8D0",
        cursor               = "#FFFFFF",
        foreground           = "#FFFFFF",
        background           = "#0A0F1F",
        selection             = "#232735",
        selection_foreground = "#FFFFFF",
        selection_background = "#232735",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
