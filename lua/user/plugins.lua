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
  "nvim-treesitter/playground",
  -- "p00f/nvim-ts-rainbow", -- archived repo
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
  "kazhala/close-buffers.nvim",
  -- "ibhagwan/fzf-lua", # not working in windows
  {"kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async"
  },
  {
    'nyngwang/NeoZoom.lua',
    -- config = function ()
    --   require('neo-zoom').setup {
    --     top_ratio = 0.15,
    --     left_ratio = 0.25,
    --     width_ratio = 0.5,
    --     height_ratio = 0.65,
    --     border = 'double',
    --     disable_by_cursor = true, -- zoom-out/unfocus when you click anywhere else.
    --     exclude_filetypes = { 'lspinfo', 'mason', 'lazy', 'fzf', 'qf' },
    --     exclude_buftypes = { 'terminal' },
    --     presets = {
    --       {
    --         filetypes = { 'dapui_.*', 'dap-repl' },
    --         config = {
    --           top_ratio = 0.27,
    --           left_ratio = 0.6,
    --           width_ratio = 0.4,
    --           height_ratio = 0.65,
    --         },
    --         callbacks = {
    --           function () vim.wo.wrap = true end,
    --         },
    --       },
    --     },
    --     -- popup = {
    --     --   -- NOTE: Add popup-effect (replace the window on-zoom with a `[No Name]`).
    --     --   -- This way you won't see two windows of the same buffer
    --     --   -- got updated at the same time.
    --     --   enabled = true,
    --     --   exclude_filetypes = {},
    --     --   exclude_buftypes = {},
    --     -- },
    --   }
    -- end
  },
  {
    "samodostal/image.nvim",
    dependencies = "m00qek/baleia.nvim"
  },
  {"numToStr/Navigator.nvim",
    config = function()
      require('Navigator').setup()
    end
  },
  "echasnovski/mini.nvim",
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
    dependencies = "ggandor/leap.nvim"
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
    -- event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  },

  -- Theme --
  "catppuccin/nvim", as = "catppuccin",

  -- Note-taking --
  -- "vimwiki/vimwiki",
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.norg.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/norg-notes",
          },
            default_workspace = "notes",
        },
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
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
