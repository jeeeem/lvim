vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt.cmdheight=1

local ok, wk = pcall(require, "which-key")
if not ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  ["am"] = { "<cmd>MarkdownPreviewToggle<cr>", "Toggle markdown preview" }
}

wk.register(mappings, opts)
