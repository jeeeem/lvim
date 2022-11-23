local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

local stages_util = require("notify.stages.util")

notify.setup {
	-- Animation style
  -- stages = "static",
  stages ={
    function(state)
      local next_height = state.message.height + 2
      local next_row = stages_util.available_slot(state.open_windows, next_height, stages_util.DIRECTION.TOP_DOWN)
      if not next_row then
        return nil
      end
      return {
        relative = "editor",
        anchor = "NE",
        -- TODO: calculate the message width and height and centered it

        -- width = state.message.width,
        width = state.message.width > 40 and state.message.width or 40,
        height = state.message.height,
        
        -- TODO: centered the notification

        col = vim.opt.columns:get() - 2,
        -- col = vim.opt.columns:get() / 2,
        -- col = (vim.opt.columns:get() / 2) + 20,
        row = next_row,
        border = "rounded",
        style = "minimal",
      }
    end,
    function()
      return {
        col = { vim.opt.columns:get() - 2},
        -- col = { vim.opt.columns:get() / 2},
        -- col = { (vim.opt.columns:get() / 2) + 20 },
        time = true,
      }
    end,
  },

	-- Function called when a new window is opened, use for changing win settings/config
	on_open = nil,

	-- Function called when a window is closed
	on_close = nil,

	-- Render function for notifications. See notify-render()
	render = "default",

	-- Default timeout for notifications
	timeout = 1500,

	-- Max number of columns for messages
	max_width = nil,
	-- Max number of lines for a message
	max_height = nil,

	-- For stages that change opacity this is treated as the highlight behind the window
	-- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
	background_colour = "Normal",

	-- Minimum width for notification windows
	minimum_width = 30,

	-- Icons for the different levels
	icons = {
		ERROR = "",
		WARN = "",
		INFO = "",
		DEBUG = "",
		TRACE = "✎",
	},
}
