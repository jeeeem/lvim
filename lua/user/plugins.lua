local function check_os()
  if vim.fn.has('win32') == 1 then
    return "& .\\install.ps1"
  end

  return "./install.sh"
end

lvim.plugins = {
  -- LSP -- 
  -- JAVA
  "mfussenegger/nvim-jdtls",
  "sigmaSd/deno-nvim",

  -- Rust
  -- "simrat39/rust-tools.nvim",
  -- {
  -- 	"saecki/crates.nvim",
  -- 	tag = "v0.3.0",
  -- 	requires = { "nvim-lua/plenary.nvim" },
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
  "nvim-treesitter/playground",
  "p00f/nvim-ts-rainbow",
  "nvim-treesitter/nvim-treesitter-textobjects",

  -- DAP --
  -- "rcarriga/cmp-dap"
  -- "mfussenegger/nvim-dap-python",
  -- "mxsdev/nvim-dap-vscode-js",
  -- "leoluz/nvim-dap-go",
  "jbyuki/one-small-step-for-vimkind",

  -- Syntax highlight
  -- "NoahTheDuke/vim-just" - https://github.com/casey/just#recipe-parameters
  "IndianBoy42/tree-sitter-just",

  -- LSP Utils --
  -- Code runner
  "skywind3000/asyncrun.vim",
  "skywind3000/asynctasks.vim",
  -- "stevearc/overseer.nvim",

  -- Diagnostics --
  "folke/trouble.nvim",

  -- Ergonomics
  "LukasPietzschmann/telescope-tabs",
  -- "numToStr/Navigator.nvim",
  {"tiagovla/scope.nvim",
    config = function()
      require("scope").setup()
    end
  }, -- Tab-buffers scoping
  
  -- Zen mode
  "folke/zen-mode.nvim",
  "folke/twilight.nvim",

  "kylechui/nvim-surround",
  "kevinhwang91/nvim-hlslens",
  {"smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
  {
    "ggandor/flit.nvim",
    requires = "ggandor/leap.nvim"
  },

  -- Convert to lua
  "troydm/zoomwintab.vim",

  -- UI --
  "kevinhwang91/nvim-bqf",
  "NvChad/nvim-colorizer.lua",
  "nvim-zh/colorful-winsep.nvim",
  "j-hui/fidget.nvim",
  "petertriho/nvim-scrollbar",
  {
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  },

  -- Theme --
  "catppuccin/nvim", as = "catppuccin",

  -- Note-taking --
	-- "vimwiki/vimwiki",
  -- {
  --   "nvim-neorg/neorg",
  --   ft = "norg",
  --   run = ":Neorg sync-parsers",
  --   after = "nvim-treesitter",
  --   config = function()
  --     require('neorg').setup {
  --       load = {
  --         ["core.defaults"] = {}
  --       }
  --     }
  --   end,
  --   -- requires = "nvim-lua/plenary.nvim"
  -- },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = {"markdown"},
  },

  -- for fun
  "Eandrju/cellular-automaton.nvim",

  -- Others
  "wakatime/vim-wakatime", -- Time Track your programming activity
  "ethanholz/nvim-lastplace", -- Last position of last edit
  "ThePrimeagen/harpoon",
  "ghillb/cybu.nvim",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "monaqa/dial.nvim",
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
  -- 	run = "cd js && npm ci",
  -- },

  -- TODO: programmatically run sh/ps1 depends on the user OS
  -- { "tzachar/cmp-tabnine", run = check_os()},
  -- {
  --  'tzachar/cmp-tabnine',
  --   after = "nvim-cmp",
  --   run='powershell ./install.ps1'
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
