return {
  {
    "jim-at-jibba/micropython.nvim",
    dependencies = { "akinsho/toggleterm.nvim", "stevearc/dressing.nvim" },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_b, {
        require("micropython_nvim").statusline,
        cond = package.loaded["micropython_nvim"] and require("micropython_nvim").exists,
      })
    end,
  },
}
