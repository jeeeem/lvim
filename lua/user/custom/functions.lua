---@diagnostic disable: lowercase-global
-- Custom Functions

local M = {}

-- -- Reload configuration without exiting vim
-- -- https://www.reddit.com/r/neovim/comments/puuskh/how_to_reload_my_lua_config_while_using_neovim/
-- -- TODO: Add more details for reloading lazy loeaded plugins (airline and telescope)
-- function _G.reload_nvim_conf()
-- 	for name, _ in pairs(package.loaded) do
-- 		if name:match "^config" then
-- 			package.loaded[name] = nil
-- 		end
-- 	end

-- 	dofile(vim.env.MYVIMRC)
-- 	-- vim.cmd [[AirlineRefresh]]
-- 	-- loader "nvim-treesitter"
-- 	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
-- end

-- -- Snapshot Plugins before updating
-- function _G.packer_update()
-- 	local datetime = os.date "%d-%m-%Y"

-- 	-- Delete the existing snapshot
-- 	vim.cmd("PackerSnapshotDelete " .. datetime)

-- 	-- Snapshot the current plugins with name of current date time
-- 	vim.defer_fn(function()
-- 		vim.cmd("PackerSnapshot " .. datetime)
-- 	end, 100)

-- 	vim.defer_fn(function()
-- 		vim.notify "Initializing Packer Update..."
-- 	end, 700)
-- 	vim.cmd [[source ~/.nvim-lua-config/nvim/lua/config/plugins.lua | PackerSync]]
-- 	-- Update the plugins
-- end

-- browser = function()
-- 	local bookmarks = {
-- 		"https://github.com/neovim/neovim",
-- 		-- "https://neovim.discourse.group/",
-- 		-- "https://github.com/nvim-telescope/telescope.nvim",
-- 		"https://github.com/rockerBOO/awesome-neovim",
-- 		"https://github.com/jeeeem",
-- 	}
-- 	require("browse").open_bookmarks { bookmarks = bookmarks }
-- end

-- input_search = function()
-- 	-- TODO: search under the cursor
-- 	require("browse").input_search()
-- end

-- -- Toggle Python F-string
-- toggle_fstring = function()
-- 	local winnr = 0
-- 	local cursor = vim.api.nvim_win_get_cursor(winnr)
-- 	local node = ts_utils.get_node_at_cursor()

-- 	while (node ~= nil) and (node:type() ~= "string") do
-- 		node = node:parent()
-- 	end
-- 	if node == nil then
-- 		print "f-string: not in string node :("
-- 		return
-- 	end

-- 	local srow, scol, ecol, erow = ts_utils.get_vim_range { node:range() }
-- 	vim.fn.setcursorcharpos(srow, scol)
-- 	local char = vim.api.nvim_get_current_line():sub(scol, scol)
-- 	local is_fstring = (char == "f")

-- 	if is_fstring then
-- 		vim.cmd "normal x"
-- 		-- if cursor is in the same line as text change
-- 		if srow == cursor[1] then
-- 			cursor[2] = cursor[2] - 1 -- negative offset to cursor
-- 		end
-- 	else
-- 		vim.cmd "normal if"
-- 		-- if cursor is in the same line as text change
-- 		if srow == cursor[1] then
-- 			cursor[2] = cursor[2] + 1 -- positive offset to cursor
-- 		end
-- 	end
-- 	vim.api.nvim_win_set_cursor(winnr, cursor)
-- end

-- -- For easier call in firenvim
-- stop_lsp_client = function()
-- 	vim.defer_fn(function()
-- 		vim.notify "Stopping LSP client"
-- 		vim.lsp.stop_client(vim.lsp.get_active_clients())
-- 	end, 1000)
-- end

-- function _G.clear_debug_details()
-- 	require("dap").clear_breakpoints()
-- 	vim.cmd [[DapVirtualTextForceRefresh]]
-- end

get_home_dir = function ()
  local home_dir = os.getenv "HOME"
  if vim.fn.has('win32') == 1 then
    home_dir = os.getenv('USERPROFILE')
  elseif vim.fn.has('unix') == 1 then
    home_dir = os.getenv('HOME')
  end
  return home_dir
end

-- Toggle Options
-- TODO: Dynamic function for toggling neovim defaults
-- function (args) {
-- Take option arguement and change its value to true or false
-- }

-- Toggle hlsearch w/ hlslens searching
-- TODO: add `Neorg toggle-concealer` when inside of .norg file
toggle_conceallevel = function()
	if vim.o.conceallevel == 2  then
    vim.o.conceallevel = 0
    vim.notify("Show Conceal off")
	else
    vim.o.conceallevel = 2
    vim.notify("Show Conceal on")
	end
end


-- Toggle wrap
toggle_wrap = function()
	if vim.wo.wrap then
		vim.wo.wrap = false
    vim.notify("Wrap text off")
	else
		vim.wo.wrap = true
    vim.notify("Wrap text on")
	end
end

-- Toggle hlsearch w/ hlslens searching
toggle_hlsearch = function()
	if vim.o.hlsearch then
		vim.o.hlsearch = false
    vim.cmd[[HlSearchLensDisable]]
    vim.notify("Highlight search off")
	else
		vim.o.hlsearch = true
    vim.cmd[[HlSearchLensEnable]]
    vim.notify("Highlight search on")
	end
end

-- Toggle relative line number
toggle_relativenumber = function()
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
    vim.notify("Relative number off")
	else
		vim.wo.relativenumber = true
    vim.notify("Relative number on")
	end
end

-- Toggle show tabline
toggle_showtabline = function()
	if vim.o.showtabline == 2 then
		vim.o.showtabline = 0
    vim.notify("Show Tabline off")
	else
		vim.o.showtabline = 2
    vim.notify("Show Tabline on")
	end
end

-- Toggle laststatus
toggle_laststatus = function()
	if vim.o.laststatus == 3 then
		vim.o.laststatus = 0
    vim.notify("Show status line off")
	else
		vim.o.laststatus = 3
    vim.notify("Show status line on")
	end
end

-- TODO: create functions
    -- get cwd() and copy in to clipboard
