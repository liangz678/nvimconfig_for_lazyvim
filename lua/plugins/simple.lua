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
}
