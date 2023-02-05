local ok, lsp = pcall(require, "lspconfig")

if not ok then
  return
end

local deno_root_markers = {"deno.json", "deno.jsonc"}
local ts_root_markers = {"package.json"}

local deno_opts = {
  root_dir = lsp.util.root_pattern(deno_root_markers)
}

local ts_opts = {
  root_dir = lsp.util.root_pattern(ts_root_markers),
  single_file_support = false,
}

require("lvim.lsp.manager").setup("denols", deno_opts)
require("lvim.lsp.manager").setup("tsserver", ts_opts)
