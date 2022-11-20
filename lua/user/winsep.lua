local ok, winsep = pcall(require, "colorful-winsep")
if not ok then
  return
end

winsep.setup({
  -- highlight for Window separator
  highlight = {
    guibg = "#111111",
    guifg = "#111111",
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
    -- TODO: Delete winsep when its only 2 windows available

    -- Executed after creating the window separator
    -- local win_n = require("colorful-winsep.utils").getWinNumber()
    -- if win_n == 2 then
    --   local win_id = vim.fn.win_getid(vim.fn.winnr('h'))
    --   local filetype = api.nvim_buf_get_option(vim.api.nvim_win_get_buf(win_id), 'filetype')
    --   if filetype == "NvimTree" then
    --     colorful_winsep.NvimSeparatorDel()
    --   end
    -- end
  end,
})

-- vim.cmd[[highlight NvimSeparator guifg=#a94dc1]]
