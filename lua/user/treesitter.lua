-- TODO: https://www.reddit.com/r/neovim/comments/10c5pvw/useful_cr_map_for_normal_mode/

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  -- "c",
  "comment",
  "css",
	"dockerfile",
	"html",
	"http",
  -- "make",
	"markdown",
	"markdown_inline",
	-- "gdscript",
	-- "godot_resource",
	-- "graphql",
	-- "norg",
  "java",
  "javascript",
  "json",
	"jsonc",
	"just",
  "lua",
  "python",
  "rust",
	"regex",
	"scss",
	"toml",
  "tsx",
  "typescript",
  "typescript",
	"vim",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }

-- Tree-sitter Rainbow Delimiters
local rainbow_delimiters = require 'rainbow-delimiters'
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

-- Tree-sitter Incremental Selection
lvim.builtin.treesitter.incremental_selection = {
  enable = true,
  keymaps = {
    -- init_selection = "<Enter>",
    node_incremental = "<Enter>",
    node_decremental = "<BS>",
    -- scope_incremental = "grc",
  },
}

-- Tree-sitter Custom Parsers
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

-- Nushell (nu) parser
-- parser_config.nu = {
--   install_info = {
--     url = "https://github.com/nushell/tree-sitter-nu",
--     files = { "src/parser.c" },
--     branch = "main",
--   },
--   filetype = "nu",
-- }

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
