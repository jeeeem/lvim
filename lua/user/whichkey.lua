-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- lvim.builtin.which_key.mappings["r"] = {
--   name = "Replace",
--   r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
--   w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
--   f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
-- }

-- Setup
lvim.builtin.which_key.setup = {
  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ...
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
    spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
  },
}
-- Which-keymapping
lvim.builtin.which_key.mappings["/"] = nil
lvim.builtin.which_key.mappings["b"] = nil
lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["f"] = nil
lvim.builtin.which_key.mappings["w"] = nil
lvim.builtin.which_key.mappings["h"] = nil

lvim.builtin.which_key.mappings["a"] = {
  name = "Actions",
  h = { "<cmd>lua toggle_hlsearch()<cr>", "Toggle highlights" },
  r = { "<cmd>lua toggle_relativenumber()<cr>", "Toggle relative number" },
  s = { "<cmd>lua toggle_laststatus()<cr>", "Toggle status line" },
  t = { "<cmd>lua toggle_showtabline()<cr>", "Toggle show tabline" },
  w = { "<cmd>lua toggle_wrap()<cr>", "Toggle wrap" },
}

lvim.builtin.which_key.mappings["b"] = {
  -- name = " 﩯Buffers",
  name = "Buffers",
  ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "goto 1" },
  ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "goto 2" },
  ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "goto 3" },
  ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "goto 4" },
  ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "goto 5" },
  ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "goto 6" },
  ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "goto 7" },
  ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "goto 8" },
  ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "goto 9" },
  c = { "<cmd>BufferLinePick<cr>", "Choose buffer" },
  C = {
    "<cmd>BufferLinePickClose<cr>",
    "Choose which buffer to close",
  },
  d = { "<cmd>BufferKill<cr>", "Buffer Kill" },
  f = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
  D = {
    "<cmd>BufferLineSortByDirectory<cr>",
    "Sort by directory",
  },
  -- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, -- TODO: implement this for bufferline
  h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
  l = {
    "<cmd>BufferLineCloseRight<cr>",
    "Close all to the right",
  },
  L = {
    "<cmd>BufferLineSortByExtension<cr>",
    "Sort by language",
  },
  p = { "<cmd>BufferLineTogglePin<cr>", "Pin buffer" },
  R = {
    "<cmd>BufferLineSortByRelativeDirectory<cr>",
    "Sort by relative directory",
  },
  s = { "<cmd>Telescope buffers<cr>", "Search Buffers" },
  T = {
    "<cmd>BufferLineSortByTabs<cr>",
    "Sort by Tab",
  },
}

lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
  b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
  d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
  g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
  i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
  o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
  u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
  p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
  r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
  s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
  q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
  U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
}

lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
  j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
  l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  C = {
    "<cmd>Telescope git_bcommits<cr>",
    "Checkout commit(for current file)",
  },
  d = {
    "<cmd>Gitsigns diffthis HEAD<cr>",
    "Git Diff",
  },
}

lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  c = { "<cmd>TroubleClose<cr>", "Close Diagnostics" },
  d = { "<cmd>TroubleToggle<cr>", "Trouble Diagnostics" },
  w = { "<cmd>Telescope diagnostics<cr>", "Telescope Diagnostics" },
  f = { require("lvim.lsp.utils").format, "Format" },
  i = { "<cmd>LspInfo<cr>", "Info" },
  I = { "<cmd>Mason<cr>", "Mason Info" },
  j = {
    vim.diagnostic.goto_next,
    "Next Diagnostic",
  },
  k = {
    vim.diagnostic.goto_prev,
    "Prev Diagnostic",
  },
  l = { vim.lsp.codelens.run, "CodeLens Action" },
  q = { vim.diagnostic.setloclist, "Quickfix" },
  r = {
    function()
      return ":IncRename " .. vim.fn.expand "<cword>"
    end,
    "Rename keep",
    expr = true,
  },
  R = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  S = {
    "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
    "Workspace Symbols",
  },
  e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
}

lvim.builtin.which_key.mappings["p"] = {
  name = "Packer",
  c = { "<cmd>PackerClean<cr>", "Clean" },
  C = { "<cmd>PackerCompile<cr>", "Compile" },
  i = { "<cmd>PackerInstall<cr>", "Install" },
  r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
  s = { "<cmd>PackerStatus<cr>", "Status" },
  S = { "<cmd>PackerSync<cr>", "Sync" },
  u = { "<cmd>PackerUpdate<cr>", "Update" },
}

lvim.builtin.which_key.mappings["s"] = {
  name = "Search",
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>lua require('lvim.core.telescope.custom-finders').find_project_files()<cr>", "Find File" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  p = {
    "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
  t = { "<cmd>Telescope live_grep<cr>", "Text" },
  T = { "<cmd>TodoTelescope<cr>", "Todos" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Tabs",
  c = { "<cmd>tabclose<cr>", "Close tab" },
  e = { "<cmd>tabedit<cr>", "New Tab Edit" },
  F = { "<cmd>tabfirst<cr>", "Navigate to first tab" },
  h = { "<cmd>-tabmove<cr>", "Move the tab page to the left" },
  l = { "<cmd>+tabmove<cr>", "Move the tab page to the right" },
  L = { "<cmd>tablast<cr>", "Navigate to last tab" },
  o = { "<cmd>tabonly<cr>", "Close other tab" },
  s = { ":Telescope telescope-tabs list_tabs theme=dropdown<cr>", "Search tabs" },
}

lvim.builtin.which_key.mappings["T"] = {
  name = "Treesitter",
  -- TODO: do the noice redirect function to show it in a split popup, not a notif.
  i = { ":TSConfigInfo<cr>", "Config Info" },
  I = { ":TSInstallInfo<cr>", "Installed treesitter Info" },

  k = { ":TSCaptureUnderCursor<cr>", "Treesitter under cursor" },
  p = { ":TSPlaygroundToggle<cr>", "Treesittter playground" },
  u = { ":TSUpdateSync all<cr>", "Update treesitter" },
}

lvim.builtin.which_key.mappings["z"] = {
  name = "Zen Mode",
  d = { ":Twilight<cr>", "Toggle Dim" },
  z = { ":ZenMode<cr>", "Toggle Zen Mode" },
}

-- local function set_harpoon_keymaps()
--   lvim.keys.normal_mode["<C-Space>"] = "<cmd>lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>"
--   lvim.keys.normal_mode["tu"] = "<cmd>lua require('harpoon.term').gotoTerminal(1)<CR>"
--   lvim.keys.normal_mode["te"] = "<cmd>lua require('harpoon.term').gotoTerminal(2)<CR>"
--   lvim.keys.normal_mode["cu"] = "<cmd>lua require('harpoon.term').sendCommand(1, 1)<CR>"
--   lvim.keys.normal_mode["ce"] = "<cmd>lua require('harpoon.term').sendCommand(1, 2)<CR>"
--   lvim.builtin.which_key.mappings["a"] = { "<cmd>lua require('harpoon.mark').add_file()<CR>", " Add Mark" }
--   lvim.builtin.which_key.mappings["<leader>"] = {
--     "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
--     " Harpoon",
--   }

--   local whk_status, whk = pcall(require, "which-key")
--   if not whk_status then
--     return
--   end
--   whk.register {
--     ["<leader>1"] = { "<CMD>lua require('harpoon.ui').nav_file(1)<CR>", " goto1" },
--     ["<leader>2"] = { "<CMD>lua require('harpoon.ui').nav_file(2)<CR>", " goto2" },
--     ["<leader>3"] = { "<CMD>lua require('harpoon.ui').nav_file(3)<CR>", " goto3" },
--     ["<leader>4"] = { "<CMD>lua require('harpoon.ui').nav_file(4)<CR>", " goto4" },
--   }
-- end


-- local status_ok, which_key = pcall(require, "which-key")
-- if not status_ok then
-- 	return
-- end

-- local setup = {
-- 	plugins = {
-- 		marks = true, -- shows a list of your marks on ' and `
-- 		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
-- 		spelling = {
-- 			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
-- 			suggestions = 20, -- how many suggestions should be shown in the list?
-- 		},
-- 		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
-- 		-- No actual key bindings are created
-- 		presets = {
-- 			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
-- 			motions = true, -- adds help for motions
-- 			text_objects = false, -- help for text objects triggered after entering an operator
-- 			windows = true, -- default bindings on <c-w>
-- 			nav = true, -- misc bindings to work with windows
-- 			z = true, -- bindings for folds, spelling and others prefixed with z
-- 			g = false, -- bindings for prefixed with g
-- 		},
-- 	},
-- 	-- add operators that will trigger motion and text object completion
-- 	-- to enable all native operators, set the preset / operators plugin above
-- 	-- operators = { gc = "Comments" },
-- 	key_labels = {
-- 		-- override the label used to display some keys. It doesn't effect WK in any other way.
-- 		-- For example:
-- 		-- ["<space>"] = "SPC",
-- 		-- ["<cr>"] = "RET",
-- 		-- ["<tab>"] = "TAB",
-- 	},
-- 	icons = {
-- 		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
-- 		separator = "➜", -- symbol used between a key and it's label
-- 		group = "+", -- symbol prepended to a group
-- 	},
-- 	popup_mappings = {
-- 		scroll_down = "<c-d>", -- binding to scroll down inside the popup
-- 		scroll_up = "<c-u>", -- binding to scroll up inside the popup
-- 	},
-- 	window = {
-- 		border = "rounded", -- none, single, double, shadow
-- 		position = "bottom", -- bottom, top
-- 		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
-- 		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
-- 		winblend = 0,
-- 	},
-- 	layout = {
-- 		height = { min = 4, max = 25 }, -- min and max height of the columns
-- 		width = { min = 20, max = 50 }, -- min and max width of the columns
-- 		spacing = 3, -- spacing between columns
-- 		align = "left", -- align columns left, center or right
-- 	},
-- 	ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
-- 	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
-- 	show_help = true, -- show help message on the command line when the popup is visible
-- 	triggers = "auto", -- automatically setup triggers
-- 	-- triggers = {"<leader>"} -- or specify a list manually
-- 	triggers_blacklist = {
-- 		-- list of mode / prefixes that should never be hooked by WhichKey
-- 		-- this is mostly relevant for key maps that start with a native binding
-- 		-- most people should not need to change this
-- 		i = { "j", "k" },
-- 		v = { "j", "k" },
-- 	},
-- }

-- local opts = {
-- 	mode = "n", -- NORMAL mode
-- 	prefix = "<leader>",
-- 	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
-- 	silent = true, -- use `silent` when creating keymaps
-- 	noremap = true, -- use `noremap` when creating keymaps
-- 	nowait = true, -- use `nowait` when creating keymaps
-- }

-- local mappings = {
-- 	["/"] = { '<cmd>lua require("Comment.api").toggle_current_linewise()<CR>', "Comment" },
-- 	["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
-- 	["E"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" },
-- 	["U"] = { "<cmd>lua reload_nvim_conf()<CR>", "Update config" },

-- 	a = {
-- 		name = "Actions",
-- 		b = { "<cmd>lua browser()<CR>", "Browser Search" },
-- 		d = { "<cmd>Alpha<CR>", "Dashboard" },
-- 		e = { "<cmd>lua require('luasnip.loaders.from_lua').edit_snippet_files()<CR>", "Edit Snippet files" },
-- 		h = { "<cmd>lua toggle_hlsearch()<CR>", "Toggle highlight search" },
-- 		i = { "<cmd>lua input_search()<CR>", "Browser Search" },
-- 		l = { "<cmd>lua require('pretty-fold.preview').keymap_open_close()<CR>", "Preview Fold" },
-- 		n = { "<cmd>lua toggle_relativenumber()<CR>", "Toggle relative number" },
-- 		m = { "<cmd>MarkdownPreview<CR>", "Markdown Preview" },
-- 		p = { "<cmd>ProjectRoot<cr>", "Project root " },
-- 		-- r = { "<cmd>vertical resize 40<cr>", "Vertical resize 40" },
-- 		s = { "<cmd>lua require('spectre').open()<cr>", "Search and Replace" },
-- 		u = { "<cmd>UndotreeToggle<cr>", "Undo Tree" },
-- 		v = { "<cmd>VimwikiIndex<CR>", "Vimwiki" },
-- 		w = { "<cmd>lua toggle_wrap()<CR>", "Toggle wrap" },
-- 		x = { "<cmd>DeleteHiddenBuffers<CR>", "Delete Hidden Buffers" },
-- 	},

-- 	b = {
-- 		name = "Buffers",
-- 		b = {
-- 			"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
-- 			"Buffers",
-- 		},
-- 		c = { "<cmd>Bd<CR>", "Close Buffer" },
-- 	},

-- 	d = {
-- 		name = "Debugging",
-- 		b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
-- 		c = { "<cmd>lua require'dap'.continue()<cr>", "Continue/Start" },
-- 		C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
-- 		g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
-- 		i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
-- 		I = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
-- 		l = { "<cmd>lua require'dapui'.list_breakpoints()<cr>", "List breakpoints" },
-- 		o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
-- 		p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
-- 		q = { "<cmd>lua require'dap'.disconnect()<cr>", "Quit/Disconnect" },
-- 		-- q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
-- 		r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
-- 		s = { "<cmd>lua require'dap'.set_breakpoint()<cr>", "Set Breakpoint" },
-- 		t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
-- 		u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
-- 		-- x = { "<cmd>lua require'dap'.clear_breakpoints()<cr>", "Clear Breakpoints" },
-- 		x = { "<cmd>lua clear_debug_details()<cr>", "Clear Breakpoints" },
-- 	},

-- 	f = {
-- 		name = "Focus Mode Window",
-- 		e = {
-- 			"<cmd>FocusEqualise<cr>",
-- 			"Equalize Windows",
-- 		},
-- 		h = {
-- 			"<cmd>FocusSplitLeft<cr>",
-- 			"Move to existing left window or create a new split to the left",
-- 		},
-- 		j = {
-- 			"<cmd>FocusSplitDown<cr>",
-- 			"Move to existing down window or create a new split to the down",
-- 		},
-- 		k = {
-- 			"<cmd>FocusSplitUp<cr>",
-- 			"Move to existing up indow or create a new split to the up",
-- 		},
-- 		l = {
-- 			"<cmd>FocusSplitRight<cr>",
-- 			"Move to existing right indow or create a new split to the right",
-- 		},
-- 		m = {
-- 			"<cmd>FocusMaxOrEqual<cr>",
-- 			"Toggle Maximize or Equalize the Window",
-- 		},
-- 		t = {
-- 			"<cmd>FocusToggle<cr>",
-- 			"Toggle Focus mode",
-- 		},
-- 	},

-- 	p = {
-- 		name = "Packer",
-- 		c = { "<cmd>PackerCompile<cr>", "Compile" },
-- 		-- d = { ":PackerSnapshotDelete ", "Compile" },
-- 		i = { "<cmd>PackerInstall<cr>", "Install" },
-- 		-- s = { "<cmd>source ~/.nvim-lua-config/nvim/lua/config/plugins.lua | PackerSync<cr>", "Sync" },
-- 		s = { "<cmd>lua packer_update()<cr>", "Packer Snapshot and Update" },
-- 		S = { "<cmd>PackerStatus<cr>", "Status" },
-- 		u = { "<cmd>PackerUpdate<cr>", "Update" },
-- 	},

-- 	g = {
-- 		name = "Git",

-- 		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
-- 		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
-- 		d = {
-- 			"<cmd>Gitsigns diffthis HEAD<cr>",
-- 			"Diff",
-- 		},

-- 		g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
-- 		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
-- 		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
-- 		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
-- 		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
-- 		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
-- 		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
-- 		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
-- 		u = {
-- 			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
-- 			"Undo Stage Hunk",
-- 		},
-- 		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
-- 		y = { "<cmd>lua require('gitlinker').get_repo_url()<cr>", "Copy repository url" },
-- 		Y = {
-- 			"<cmd>lua require('gitlinker').get_repo_url({action_callback = require('gitlinker.actions').open_in_browser})<cr>",
-- 			"Copy repository url and open a browser",
-- 		},
-- 	},

-- 	l = {
-- 		name = "LSP",
-- 		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
-- 		d = {
-- 			"<cmd>TroubleToggle document_diagnostics<cr>",
-- 			"Document Diagnostics",
-- 		},
-- 		D = {
-- 			"<cmd>Telescope diagnostics<cr>",
-- 			"Project Document Diagnostics",
-- 		},
-- 		-- w = {
-- 		-- 	"<cmd>Telescope lsp_workspace_diagnostics<cr>",
-- 		-- 	"Workspace Diagnostics",
-- 		-- },
-- 		f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
-- 		i = { "<cmd>LspInfo<cr>", "Info" },
-- 		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
-- 		j = {
-- 			"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
-- 			"Next Diagnostic",
-- 		},
-- 		k = {
-- 			"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
-- 			"Prev Diagnostic",
-- 		},
-- 		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
-- 		-- q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
-- 		-- r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
-- 		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
-- 		S = {
-- 			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
-- 			"Workspace Symbols",
-- 		},
-- 		x = { "<cmd>lua vim.lsp.stop_client(vim.lsp.get_active_clients())<cr>", "Stop all LSP clients" },
-- 	},

-- 	m = {
-- 		name = "Mark Harpoon",
-- 		["1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Navigate to 1st mark file" },
-- 		["2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Navigate to 2nd mark file" },
-- 		["3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Navigate to 3rd mark file" },
-- 		["4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Navigate to 4th mark file" },
-- 		["5"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to 5th mark file" },
-- 		["6"] = { "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", "Navigate to 6th mark file" },
-- 		["7"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to 7th mark file" },
-- 		["8"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to 8th mark file" },
-- 		["9"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to 9th mark file" },
-- 		["0"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to 10th mark file" },
-- 		a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file" },
-- 		n = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Next Mark" },
-- 		p = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "Previous Mark" },
-- 		q = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Quick Menu" },
-- 		s = { "<cmd>Telescope harpoon marks<cr>", "Telescope harpoon marks" },
-- 	},

-- 	s = {
-- 		name = "Search",
-- 		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
-- 		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
-- 		f = {
-- 			"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
-- 			"Find Files",
-- 		},
-- 		g = { "<cmd>Telescope git_files<cr>", "Git Files" },
-- 		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
-- 		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
-- 		p = { "<cmd>Telescope projects<cr>", "Projects" },
-- 		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
-- 		R = { "<cmd>Telescope registers<cr>", "Registers" },
-- 		s = { "<cmd>lua require('legendary').find()<cr>", "Search for keymaps and commands" },
-- 		t = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
-- 		-- k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
-- 		-- C = { "<cmd>Telescope commands<cr>", "Commands" },
-- 	},

-- 	r = {
-- 		name = "Code Runner",
-- 		c = {
-- 			"<cmd>RunCode<cr>",
-- 			"Run Code based on file type",
-- 		},
-- 		f = {
-- 			"<cmd>RunFile<cr>",
-- 			"Run the current file",
-- 		},
-- 		F = {
-- 			"<cmd>CRFiletype<cr>",
-- 			"List of supported filetypes config",
-- 		},
-- 		p = {
-- 			"<cmd>RunProject<cr>",
-- 			"Run the current project",
-- 		},
-- 		P = {
-- 			"<cmd>CRProjects<cr>",
-- 			"List of projects config",
-- 		},
-- 	},

-- 	t = {
-- 		name = "Tab",
-- 		c = { "<cmd>tabclose<cr>", "Close tab" },
-- 		e = { "<cmd>tabedit<cr>", "New Tab Edit" },
-- 		f = { "<cmd>tabfirst<cr>", "Move to first tab" },
-- 		l = { "<cmd>tablast<cr>", "Move to last tab" },
-- 		o = { "<cmd>tabonly<cr>", "Close other tab" },
-- 		r = { "<cmd>CtrlSpaceTabLabel<cr>", "Rename Tab" },
-- 	},

-- 	T = {
-- 		name = "Terminal",
-- 		c = { "<cmd>ToggleTerm<cr>", "Close terminal" },
-- 		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
-- 		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
-- 		n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
-- 		p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
-- 		t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
-- 		u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
-- 		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
-- 	},

-- 	z = {
-- 		name = "Zen Mode",
-- 		t = { "<cmd>Twilight<cr>", "Toggle Dim" },
-- 		z = { "<cmd>ZenMode<cr>", "Toggle Zen Mode" },
-- 	},
-- }

-- local vopts = {
-- 	mode = "v", -- VISUAL mode
-- 	prefix = "<leader>",
-- 	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
-- 	silent = true, -- use `silent` when creating keymaps
-- 	noremap = true, -- use `noremap` when creating keymaps
-- 	nowait = true, -- use `nowait` when creating keymaps
-- }
-- local vmappings = {
-- 	["/"] = { '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', "Comment" },
-- 	-- ["r"] = { '<ESC><CMD>lua require("refactoring").select_refactor()<CR>', "Comment" },
-- 	g = {
-- 		name = "Git",
-- 		y = {
-- 			"<cmd>lua require('gitlinker').get_buf_range_url('v')<cr>",
-- 			"Generate permalink",
-- 		},
-- 		Y = {
-- 			"<cmd>lua require('gitlinker').get_buf_range_url('v',{action_callback = require('gitlinker.actions').open_in_browser})<cr>",
-- 			"Generate permalink and open a browser",
-- 		},
-- 	},
-- }

-- which_key.setup(setup)
-- which_key.register(mappings, opts)
-- which_key.register(vmappings, vopts)
-- return M
