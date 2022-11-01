-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }
-- Additional Plugins


local function check_os()
  if vim.fn.has('Windows') then
    return "& .\\install.ps1"
  end

  return "./install.sh"
end

print(1)


lvim.plugins = {
  -- "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "ethanholz/nvim-lastplace", -- Last position of last edit
  -- "karb94/neoscroll.nvim",
  "j-hui/fidget.nvim",
  -- "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  -- "christianchiarulli/harpoon",
  "ThePrimeagen/harpoon",
  -- "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  -- "moll/vim-bbye",
  -- "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  -- "f-person/git-blame.nvim",
  -- "ruifm/gitlinker.nvim",
  -- "mattn/vim-gist",
  -- "mattn/webapi-vim",
  "folke/zen-mode.nvim",
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
  "monaqa/dial.nvim",
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
  -- {
  -- 	"folke/noice.nvim",
  -- 	event = "VimEnter",
  -- 	config = function()
  -- 		require("noice").setup()
  -- 	end,
  -- 	requires = {
  -- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  -- 		"MunifTanjim/nui.nvim",
  -- 	},
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
