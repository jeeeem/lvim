local z_status_ok, zen = pcall(require, "zen-mode")

if not z_status_ok then
	return
end

local t_status_ok, twilight = pcall(require, "twilight")

if not t_status_ok then
	return
end

-- Zen config
-- TODO: Remove the parts when using zen mode
--  - gitsigns -- Gitsigns toggle_sgns (DONE)
--  - scrollbar -- ScrollbarHide
--  - lualine -- lua require('lualine').hide({unhide=true})
--    - https://github.com/nvim-lualine/lualine.nvim#disabling-lualine

zen.setup {
	plugins = {
		options = {
			enabled = true,
			ruler = false, -- disables the ruler text in the cmd line area
			showcmd = false, -- disables the command in the last line of the screen
		},
		twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
		gitsigns = { enabled = true }, -- disables git signs
		tmux = { enabled = false }, -- disables the tmux statusline
	},
	window = {
		options = {
			number = true,
			relativenumber = true,
		},
	},
}

-- Twilight Settings
twilight.setup {
	treesitter = true,
}
