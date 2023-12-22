-- https://github.com/nvim-zh/colorful-winsep.nvim
local ok, winsep = pcall(require, "colorful-winsep")
if not ok then
  return
end

winsep.setup({
  -- highlight for Window separator
  highlight = {
    -- bg = "#111111",
    fg = "#a94dc1",
  },
  -- timer refresh rate
  interval = 30,
  -- This plugin will not be activated for filetype in the following table.
  no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
  -- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
  symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
  close_event = function()
    -- Executed after closing the window separator
  end,
  create_event = function()
    -- Executed after creating the window separator
    local win_n = require("colorful-winsep.utils").calculate_number_windows()
    local win_id = vim.fn.win_getid(vim.fn.winnr('h'))
    local filetype = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(win_id), 'filetype')
    if win_n == 2 then
      winsep.NvimSeparatorDel()
    end
  end,
})
-- vim.cmd[[highlight NvimSeparator guifg=#a94dc1]]
