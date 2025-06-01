return {
  -- add symbols-outline
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
    opts = {
      scode = {
        vscode = true, -- 相当于在 scode 相关配置中启用 vscode 相关特性
      },
      
    },
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
