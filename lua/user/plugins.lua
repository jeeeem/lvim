local function check_os()
  if vim.fn.has('win32') == 1 then
    return "& .\\install.ps1"
  end

  return "./install.sh"
end

lvim.plugins = {
  -- LSP --
  -- JAVA
  {
    "mfussenegger/nvim-jdtls",
    ft = "java"
  },
  -- "sigmaSd/deno-nvim",

  -- Rust
  -- "simrat39/rust-tools.nvim",
  -- {
  -- 	"saecki/crates.nvim",
  -- 	tag = "v0.3.0",
  -- 	dependencies = { "nvim-lua/plenary.nvim" },
  -- 	config = function()
  -- 		require("crates").setup({
  -- 			null_ls = {
  -- 				enabled = true,
  -- 				name = "crates.nvim",
  -- 			},
  -- 		})
  -- 	end,
  -- },

  -- JS/TS
  -- "jose-elias-alvarez/typescript.nvim",

  -- Go
  -- "olexsmir/gopher.nvim",

  -- Treesitter --
  {
    "nvim-treesitter/playground",
    event = "VeryLazy",
    cmd = "TSPlaygroundToggle"
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = true,
    event = "BufReadPre",
    dependencies = "nvim-treesitter",
  },
  {
    "HiPhish/nvim-ts-rainbow2",
    lazy = true,
    event = "BufReadPost",
    dependencies = "nvim-treesitter",
  },

  -- DAP --
  -- "rcarriga/cmp-dap"
  -- "mfussenegger/nvim-dap-python",
  -- "mxsdev/nvim-dap-vscode-js",
  -- "leoluz/nvim-dap-go",
  {
    -- https://github.com/jbyuki/one-small-step-for-vimkind
    "jbyuki/one-small-step-for-vimkind",
    ft = "lua",
    event = { "BufRead", "BufNew" },
  },

  -- Syntax highlight
  -- "NoahTheDuke/vim-just" - https://github.com/casey/just#recipe-parameters
  {
    "IndianBoy42/tree-sitter-just",
    ft = {"justfile","just"},
    event = "BufReadPost",
    dependencies = "nvim-treesitter",
  },

  -- LSP Utils --
  -- Code runner
  {
    "skywind3000/asyncrun.vim",
     event = { "BufRead", "BufNew" },
    dependencies = "skywind3000/asynctasks.vim"
  },
  -- "stevearc/overseer.nvim",

  -- Diagnostics --
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    cmd = "Trouble",
  },

  -- Ergonomics
  {
    "SmiteshP/nvim-navbuddy",
    cmd = "Navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
  },
  {
    "kevinhwang91/nvim-hlslens",
    event = "BufReadPost",
  },
  {
    "windwp/nvim-spectre",
    lazy = true,
    cmd = "Spectre",
  },
  {
    "kevinhwang91/nvim-ufo",
    lazy = true,
    event = "BufReadPre",
    dependencies = "kevinhwang91/promise-async"
  },
  {
    "samodostal/image.nvim",
    event = "VeryLazy",
    dependencies = "m00qek/baleia.nvim"
  },
  {
    "tiagovla/scope.nvim", -- Tab-buffers scoping
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("scope").setup()
    end
  },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
    lazy = true,
    cmd = "IncRename",
  },
  {
    "ggandor/flit.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = "ggandor/leap.nvim"
  },
  {
    "nyngwang/NeoZoom.lua",
    event = "BufWinEnter",
  },
  {
    "kazhala/close-buffers.nvim",
    lazy = true,
    event = "VeryLazy",
  },
  {
    "stevearc/oil.nvim",
    event = "User DirOpened"
  },
  "LukasPietzschmann/telescope-tabs",
  {
    "echasnovski/mini.move",
    event = "VeryLazy",
    version = false,
  },
  {
    "echasnovski/mini.bracketed",
    event = "VeryLazy",
    version = false,
  },
  {
    'echasnovski/mini.basics',
    event = "VeryLazy",
    version = false
  },
  {
    "cbochs/portal.nvim",
    event = "VeryLazy",
    -- Optional dependencies
    dependencies = {
      -- "cbochs/grapple.nvim",
      "ThePrimeagen/harpoon"
    },
  },
  {
    "ibhagwan/fzf-lua",
    enabled = vim.fn.has('unix') == 1 -- enable only when in unix system
  },
  {
    "chrisgrieser/nvim-genghis",
    event = "VeryLazy",
  },
  {
    "mbbill/undotree",
    cmd = {'UndotreeToggle'}
  },
  {
    'mizlan/iswap.nvim',
    cmd = {'ISwapNode', 'ISwapWith', 'ISwapWithLeft', 'ISwapWithRight'},
    dependencies = "nvim-treesitter",
  },
  {
    'mrjones2014/smart-splits.nvim',
    event = "BufWinEnter",
  },

  -- Session Management
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    lazy = true,
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(get_cache_dir() .. "/sessions/"), -- directory where session files are saved
        options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
        pre_save = nil,
      }
    end,
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    -- event = "VeyLazy",
    cmd = "ZenMode"
  },
  {
    "folke/twilight.nvim",
    cmd = "Twilight"
  },

  "kylechui/nvim-surround",

  -- Convert to lua
  {
    "troydm/zoomwintab.vim",
    lazy = true,
    cmd = "ZoomWinTabToggle",
  },

  -- UI --
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "WinEnter",
  },
  "nvim-zh/colorful-winsep.nvim",
  "j-hui/fidget.nvim",
  "petertriho/nvim-scrollbar",

  -- Theme --
  {"catppuccin/nvim",
    name = "catppuccin"
  },
  "xiyaowong/transparent.nvim",

  -- Note-taking --
  -- {
  --   "nvim-neorg/neorg",
  --   ft = "norg",
  --   event = "VeryLazy",
  --   build = ":Neorg sync-parsers",
  --   dependencies = "nvim-treesitter",
  --   opts = {
  --     load = {
  --       ["core.defaults"] = {}, -- Loads default behaviour
  --       ["core.norg.concealer"] = {  -- Adds pretty icons to your documents
  --       -- https://github.com/nvim-neorg/neorg/wiki/Concealer
  --       },
  --       ["core.norg.dirman"] = { -- Manages Neorg workspaces
  --       -- https://github.com/nvim-neorg/neorg/wiki/Dirman
  --         config = {
  --           workspaces = {
  --             notes = "~/norg-notes",
  --           },
  --           default_workspace = "notes",
  --           index = "index.norg",
  --         },
  --       },
  --     },
  --   },
  -- },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = {"markdown"},
  },
  {
    "epwalsh/obsidian.nvim",
    event = "VeryLazy",
    config = function ()
      require("obsidian").setup({
        dir = "~/vimwiki",
        completion = {
          nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
        },
      })
    end


  },
  -- "vimwiki/vimwiki",

  -- for fun
  {
    "Eandrju/cellular-automaton.nvim",
    event = "VeryLazy",
    cmd = "CellularAutomaton"
  },

  -- Others
  {
    "wakatime/vim-wakatime", -- Time Track your programming activity
    lazy = true,
    event = "BufReadPost",
  },
  {
    "monaqa/dial.nvim",
    event = "VeryLazy",
  },
  "ethanholz/nvim-lastplace", -- Last position of last edit
  {
    "folke/todo-comments.nvim",
     event = "BufRead",
  },
  -- "ghillb/cybu.nvim",

  -- "folke/styler.nvim",
  -- "vim-pandoc/vim-pandoc-syntax",
  -- "MattesGroeger/vim-bookmarks",
  -- "moll/vim-bbye",
  -- "f-person/git-blame.nvim",
  -- "ruifm/gitlinker.nvim",
  -- "mattn/vim-gist",
  -- "mattn/webapi-vim",
  -- "lvimuser/lsp-inlayhints.nvim",
  -- "lunarvim/darkplus.nvim",
  -- "lunarvim/templeos.nvim",
  -- "kevinhwang91/nvim-bqf",
  -- "is0n/jaq-nvim",
  -- "hrsh7th/cmp-emoji",
  -- "ggandor/leap.nvim",
  -- "nacro90/numb.nvim",
  -- "TimUntersberger/neogit",
  -- "sindrets/diffview.nvim",
  -- {
  -- 	"jinh0/eyeliner.nvim",
  -- 	config = function()
  -- 		require("eyeliner").setup({
  -- 			highlight_on_key = true,
  -- 		})
  -- 	end,
  -- },
  -- {
  -- 	"0x100101/lab.nvim",
  -- 	build = "cd js && npm ci",
  -- },

  -- TODO: programmatically run sh/ps1 depends on the user OS
  -- { "tzachar/cmp-tabnine", run = check_os()},
  -- {
  --  'tzachar/cmp-tabnine',
  --   after = "nvim-cmp",
  --   build='powershell ./install.ps1'
  -- }

  -- {
  -- 	"zbirenbaum/copilot.lua",
  -- 	event = { "VimEnter" },
  -- 	config = function()
  -- 		vim.defer_fn(function()
  -- 			require("copilot").setup({
  -- 				plugin_manager_path = os.getenv("LUNARVIM_RUNTIME_DIR") .. "/site/pack/packer",
  -- 			})
  -- 		end, 100)
  -- 	end,
  -- },
  -- {
  -- 	"zbirenbaum/copilot-cmp",
  -- 	after = { "copilot.lua" },
  -- 	config = function()
  -- 		require("copilot_cmp").setup()
  -- 	end,
  -- },
  -- Packer
  -- "karb94/neoscroll.nvim",
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
