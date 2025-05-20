return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- 合并你的配置到默认选项中
      opts.incremental_selection = {
        enable = true,
        keymaps = {
          -- init_selection = "gnn", -- 设置初始选择的键位
          node_incremental = "<CR>", -- 节点增量选择的键位
          -- scope_incremental = "grc", -- 作用域增量选择的键位
          node_decremental = "<BS>", -- 节点缩减选择的键位
        },
      }
      return opts
    end,
  },
}
