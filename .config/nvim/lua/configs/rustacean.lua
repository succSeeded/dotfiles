local extension_path = "$MASON/packages/codelldb" .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
-- If you are on Linux, replace the line above with the line below:
-- local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
local cfg = require "rustaceanvim.config"

vim.g.rustaceanvim = {
  dap = {
    adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}
