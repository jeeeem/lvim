local function check_os()
  if vim.fn.has('win32') == 1 then
    return "& .\\install.ps1"
  end

  return "./install.sh"
end

lvim.plugins = {

  -- LSP
  "mfussenegger/nvim-jdtls",
  "sigmaSd/deno-nvim",
  {"smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },

  -- Treesitter
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",

  -- DAP

  -- Syntax highlight
  -- "NoahTheDuke/vim-just" - https://github.com/casey/just#recipe-parameters
  -- "IndianBoy42/tree-sitter-just"

  -- Utils
  "kylechui/nvim-surround",
  "nvim-zh/colorful-winsep.nvim",

  -- UI
  "j-hui/fidget.nvim",
  "petertriho/nvim-scrollbar",
  "kevinhwang91/nvim-hlslens",

  -- Theme
  "catppuccin/nvim", as = "catppuccin",

  -- Note-taking
	-- "vimwiki/vimwiki",
  {
    "nvim-neorg/neorg",
   ft = "norg",
    after = "nvim-treesitter",
    config = function()
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}
        }
      }
    end,
    requires = "nvim-lua/plenary.nvim"
  },

  -- Others
  "wakatime/vim-wakatime", -- Time Track your programming activity
  "ethanholz/nvim-lastplace", -- Last position of last edit
  "ThePrimeagen/harpoon",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "monaqa/dial.nvim",
  "folke/zen-mode.nvim",
  "folke/twilight.nvim",
  -- "folke/styler.nvim",
  -- "vim-pandoc/vim-pandoc-syntax",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = {"markdown"},
  },
  {
    "folke/noice.nvim",
    -- config = function()
    --   require("user.noice")
    -- end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  },

  -- Convert to lua
  "troydm/zoomwintab.vim"
  
  -- "nvim-treesitter/playground",
  -- "karb94/neoscroll.nvim",
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
  -- "simrat39/rust-tools.nvim",
  -- "olexsmir/gopher.nvim",
  -- "leoluz/nvim-dap-go",
  -- "mfussenegger/nvim-dap-python",
  -- "jose-elias-alvarez/typescript.nvim",
  -- "mxsdev/nvim-dap-vscode-js",
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
  -- {
  -- 	"jinh0/eyeliner.nvim",
  -- 	config = function()
  -- 		require("eyeliner").setup({
  -- 			highlight_on_key = true,
  -- 		})
  -- 	end,
  -- },
  -- { "christianchiarulli/telescope-tabs", branch = "chris" },
  -- {
  -- 	"0x100101/lab.nvim",
  -- 	run = "cd js && npm ci",
  -- },

  -- TODO: programmatically run sh/ps1 depends on the user OS
  -- { "tzachar/cmp-tabnine", run = check_os()},
  -- { "tzachar/cmp-tabnine", run = "& .\\install.ps1"},

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

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
