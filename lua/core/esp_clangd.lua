local M = {}

-- 检测是否为 ESP32 项目
function M.is_esp32_project()
  -- 检查项目根目录标志文件
  local root_files = { "sdkconfig", "idf_component.yml" }
  for _, file in ipairs(root_files) do
    if vim.fn.filereadable(file) == 1 then
      return true
    end
  end

  -- 检查环境变量
  -- if os.getenv("IDF_PATH") ~= nil then
  --   return true
  -- end

  -- 检查文件内容
  if vim.fn.filereadable("CMakeLists.txt") == 1 then
    local content = table.concat(vim.fn.readfile("CMakeLists.txt"), "\n")
    if content:match("IDF_PATH") then
      return true
    end
  end

  return false
end

-- 获取 ESP32 clangd 路径
function M.get_esp_clangd_path()
  local idf_path = os.getenv("IDF_PATH") or ""
  -- 尝试常见路径模式
  local candidates = {
    idf_path .. "/tools/esp-clang/16.0.1-fe4f10a809/esp-clang/bin/clangd",
    idf_path .. "/tools/tools/xtensa-esp32-elf/esp-*/bin/clangd",
    idf_path .. "/tools/clang/bin/clangd",
    "/home/liangz/.espressif/tools/esp-clang/16.0.1-fe4f10a809/esp-clang/bin/clangd",
    "/opt/esp/tools/clang/bin/clangd",
  }

  for _, pattern in ipairs(candidates) do
    local path = vim.fn.glob(pattern)
    if path ~= "" and vim.fn.executable(path) == 1 then
      return path
    end
  end

  return nil
end

-- 获取 ESP32 工具链路径
function M.get_esp_toolchain_path(esp_clangd_path)
  if not esp_clangd_path then
    return ""
  end
  return vim.fn.fnamemodify(esp_clangd_path, ":h") .. "/*"
end

return M
