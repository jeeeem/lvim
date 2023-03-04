-- TODO: https://www.reddit.com/r/neovim/comments/10c5pvw/useful_cr_map_for_normal_mode/

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  -- "c",
  -- "make",
	"dockerfile",
	"gdscript",
	"graphql",
	"html",
	"http",
	"jsonc",
	"just",
	"markdown",
	"markdown_inline",
	"norg",
	"regex",
	"scss",
	"toml",
  "typescript",
	"vim",
  "bash",
  "css",
  "java",
  "java",
  "javascript",
  "json",
  "lua",
  "lua",
  "python",
  "rust",
  "tsx",
  "typescript",
  "yaml",
	-- "godot_resource",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
-- lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow = {
  enable = true,
  -- disable = { "jsx", "cpp"  }, -- list of languages you want to disable the plugin for
  -- disable = vim.tbl_filter(
  --    function(p)
  --        local disable = true
  --        for _, lang in pairs(enabled_list) do
  --          if p==lang then disable = false end
  --        end
  --        return disable
  --    end,
  --    parsers.available_parsers()
  --  )
  -- Which query to use for finding delimiters
  query = 'rainbow-parens',
  -- Highlight the entire buffer all at once
  strategy = require 'ts-rainbow.strategy.global',
  extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  max_file_lines = 1000, -- Do not enable for files with more than n lines, int
  -- colors = {
  -- 	"#EBCB8B",
  -- 	"#D08770",
  -- 	"#BF616A",
  -- 	"#A3BE8C",
  -- 	"#B48EAD",
  -- 	"#8FBCBB",
  -- 	"#81A1C1",
  -- }, -- table of hex strings
  -- termcolors = {
  --   "Red",
  --   "Green",
  --   "Yellow",
  --   "Blue",
  --   "Magenta",
  --   "Cyan",
  --   "White",
  -- }, -- table of colour name strings
}

-- Custom parsers
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- Powershell (ps1) parser
parser_config.powershell = {
  install_info = {
    url = "https://github.com/jrsconfitto/tree-sitter-powershell",
    files = {"src/parser.c"}
  },
  filetype = "ps1",
  used_by = { "psm1", "psd1", "pssc", "psxml", "cdxml" }
}

-- Just (justfile) parser
parser_config.just = {
  install_info = {
    url = "https://github.com/IndianBoy42/tree-sitter-just",
    files = { "src/parser.c", "src/scanner.cc" },
    branch = "main",
  },
  filetype = "justfile",
  maintainers = { "@IndianBoy42" },
}

-- local c_status_ok, configs = pcall(require, "nvim-treesitter.configs")

-- if not c_status_ok then
-- 	return
-- end

-- local p_status_ok, parsers = pcall(require, "nvim-treesitter.parsers")
-- if not p_status_ok then
-- 	return
-- end

-- -- List of available filetypes with rainbow parenthesis
-- -- local rainbow_enabled_list = { "clojure", "fennel", "commonlisp", "query", ... }

-- configs.setup {
-- 	-- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages

-- 	ensure_installed = "all",

-- ensure_installed = {
-- 	"bash",
-- 	"c",
-- 	"c_sharp",
-- 	"cmake",
-- 	"comment",
-- 	"css",
-- 	"dockerfile",
-- 	"gdscript",
-- 	"godot_resource",
-- 	"graphql",
-- 	"html",
-- 	"http",
-- 	"java",
-- 	"javascript",
-- 	"jsdoc",
-- 	"json",
-- 	"json5",
-- 	"jsonc",
-- 	"just",
-- 	"lua",
-- 	"make",
-- 	"markdown",
-- 	"norg",
-- 	"python",
-- 	"regex",
-- 	"rust",
-- 	"scss",
-- 	"solidity",
-- 	"todotxt",
-- 	"toml",
-- 	"tsx",
-- 	"vim",
-- 	"vue",
-- 	"yaml",
-- },

-- 	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
-- 	ignore_install = { "" }, -- List of parsers to ignore installing
-- 	autopairs = {
-- 		enable = true,
-- 	},
-- 	autotag = {
-- 		enable = true,
-- 	},
-- 	context_commentstring = {
-- 		enable = true,
-- 		enable_autocmd = false,
-- 	},
-- 	highlight = {
-- 		enable = true, -- false will disable the whole extension
-- 		disable = { "" }, -- list of language that will be disabled
-- 		additional_vim_regex_highlighting = true,
-- 	},
-- 	indent = { enable = true, disable = { "yaml" } },
-- 	rainbow = {
-- 		enable = true,
-- 		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
-- 		-- disable = vim.tbl_filter(
-- 		--    function(p)
-- 		--        local disable = true
-- 		--        for _, lang in pairs(enabled_list) do
-- 		--          if p==lang then disable = false end
-- 		--        end
-- 		--        return disable
-- 		--    end,
-- 		--    parsers.available_parsers()
-- 		--  )
-- 		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
-- 		max_file_lines = nil, -- Do not enable for files with more than n lines, int
-- 		colors = {
-- 			"#EBCB8B",
-- 			"#D08770",
-- 			"#BF616A",
-- 			"#A3BE8C",
-- 			"#B48EAD",
-- 			"#8FBCBB",
-- 			"#81A1C1",
-- 		}, -- table of hex strings
-- 		-- termcolors = {} -- table of colour name strings
-- 	},
-- 	playground = {
-- 		enable = false,
-- 		-- disable = {},
-- 		-- updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
-- 		-- persist_queries = false, -- Whether the query persists across vim sessions
-- 		-- keybindings = {
-- 		-- toggle_query_editor = 'o',
-- 		-- toggle_hl_groups = 'i',
-- 		-- toggle_injected_languages = 't',
-- 		-- toggle_anonymous_nodes = 'a',
-- 		-- toggle_language_display = 'I',
-- 		-- focus_language = 'f',
-- 		-- unfocus_language = 'F',
-- 		-- update = 'R',
-- 		-- goto_node = '<cr>',
-- 		-- show_help = '?',
-- 		-- },
-- 	},
-- 	refactor = {
-- 		smart_rename = {
-- 			enable = true,
-- 			keymaps = {
-- 				smart_rename = "grn",
-- 			},
-- 		},
-- 		highlight_definitions = {
-- 			enable = true,
-- 			-- Set to false if you have an `updatetime` of ~100.
-- 			clear_on_cursor_move = true,
-- 		},
-- 		highlight_current_scope = { enable = false },
-- 		-- navigation = {
-- 		-- 	enable = true,
-- 		-- 	keymaps = {
-- 		-- 		goto_definition = "gnd",
-- 		-- 		list_definitions = "gnD",
-- 		-- 		list_definitions_toc = "gO",
-- 		-- 		goto_next_usage = "<a-*>",
-- 		-- 		goto_previous_usage = "<a-#>",
-- 		-- 	},
-- 		-- },
-- 	},
-- 	textobjects = {
-- 		select = {
-- 			enable = true,

-- 			-- Automatically jump forward to textobj, similar to targets.vim
-- 			lookahead = true,

-- 			keymaps = {
-- 				-- You can use the capture groups defined in textobjects.scm
-- 				["af"] = "@function.outer",
-- 				["if"] = "@function.inner",
-- 				["ac"] = "@class.outer",
-- 				["ic"] = "@class.inner",
-- 			},
-- 		},
-- 		move = {
-- 			enable = true,
-- 			set_jumps = true, -- whether to set jumps in the jumplist
-- 			goto_next_start = {
-- 				["]m"] = "@function.outer",
-- 				["]]"] = "@class.outer",
-- 			},
-- 			goto_next_end = {
-- 				["]M"] = "@function.outer",
-- 				["]["] = "@class.outer",
-- 			},
-- 			goto_previous_start = {
-- 				["[m"] = "@function.outer",
-- 				["[["] = "@class.outer",
-- 			},
-- 			goto_previous_end = {
-- 				["[M"] = "@function.outer",
-- 				["[]"] = "@class.outer",
-- 			},
-- 		},
-- 	},
-- }

-- parsers.get_parser_configs().just = {
-- 	install_info = {
-- 		url = "https://github.com/IndianBoy42/tree-sitter-just", -- local path or git repo
-- 		files = { "src/parser.c", "src/scanner.cc" },
-- 		branch = "main",
-- 	},
-- 	maintainers = { "@IndianBoy42" },
-- }
