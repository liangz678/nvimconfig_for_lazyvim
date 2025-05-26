return {
  -- add symbols-outline
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "echasnovski/mini.icons",
    opts = {
      extension = {
        ["hpp"] = { glyph = "H", hl = "MiniIconsBlue" },
        -- hpp = { glyph = "󰟓", hl = "MiniIconsBlue" },
      },
      -- filetype = {
      --   cpp = { glyph = "󰟓", hl = "MiniIconsGrey" },
      -- },
    },
  },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {},
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      latex = { enabled = false },
    },
  },
}
