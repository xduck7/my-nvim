return {
  {
    "m4xshen/hardtime.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      max_time = 1000,
      disable_mouse = false,
      hint = true,
    },
    event = "VeryLazy",
  },
}
