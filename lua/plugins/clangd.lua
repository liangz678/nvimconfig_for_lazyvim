local esp_util = require("core.esp_clangd")

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local is_esp = esp_util.is_esp32_project()
      -- 覆盖默认的 clangd 配置
      if is_esp then
        opts.servers.clangd.cmd = {
          -- "/home/liangz/.espressif/tools/esp-clang/16.0.1-fe4f10a809/esp-clang/bin/clangd",
          esp_util.get_esp_clangd_path(),
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        }
      end
    end,
  },
}
