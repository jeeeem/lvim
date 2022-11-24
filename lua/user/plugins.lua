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
  "nvim-treesitter/nvim-treesitter-textobjects",

  -- DAP --
  -- "mfussenegger/nvim-dap-python",
  -- "mxsdev/nvim-dap-vscode-js",
  -- "leoluz/nvim-dap-go",

  -- Syntax highlight
  -- "NoahTheDuke/vim-just" - https://github.com/casey/just#recipe-parameters
  -- "IndianBoy42/tree-sitter-just"

  -- LSP Utils --
  -- Code runner
  "skywind3000/asyncrun.vim",
  "skywind3000/asynctasks.vim",
  -- "stevearc/overseer.nvim",

  -- Diagnostics --
  "folke/trouble.nvim",
  
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
    -- requires = "nvim-lua/plenary.nvim"
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = {"markdown"},
  },

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
  -- {{
    position = "bottom", -- position of the list can be: bottom, top, left, right
    height = 10, -- height of the trouble list when position is top or bottom
    width = 50, -- width of the list when position is left or right
    icons = true, -- use devicons for filenames
    mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
    fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    group = true, -- group results by file
    padding = true, -- add an extra new line on top of the list
    action_keys = { -- key mappings for actions in the trouble list
        -- map to {} to remove a mapping, for example:
        -- close = {},
        close = "q", -- close the list
        cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
        refresh = "r", -- manually refresh
        jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
        open_split = { "<c-x>" }, -- open buffer in new split
        open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
        open_tab = { "<c-t>" }, -- open buffer in new tab
        jump_close = {"o"}, -- jump to the diagnostic and close the list
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        toggle_preview = "P", -- toggle auto_preview
        hover = "K", -- opens a small popup with the full multiline message
        preview = "p", -- preview the diagnostic location
        close_folds = {"zM", "zm"}, -- close all folds
        open_folds = {"zR", "zr"}, -- open all folds
        toggle_fold = {"zA", "za"}, -- toggle fold of current file
        previous = "k", -- previous item
        next = "j" -- next item
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = false, -- automatically open the list when you have diagnostics
    auto_close = false, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
    auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
    use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}
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
