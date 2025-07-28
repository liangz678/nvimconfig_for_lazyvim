return {
  "keaising/im-select.nvim",
  config = function()
    require("im_select").setup({
      -- macOS 默认英文输入法
      default_im = "com.apple.keylayout.ABC",
      -- 是否异步切换，建议开启
      async_switch_im = true,
    })
  end,
}
