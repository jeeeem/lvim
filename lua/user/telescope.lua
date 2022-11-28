-- Telescope config
-- https://gitlab.com/lostneophyte/dotfiles/-/blob/5d49006532bf57db9f7e09564cb43010f631c571/lvim/.config/lvim/lua/user/telescope.lua
-- https://github.com/LunarVim/LunarVim/issues/3406

local a_ok, actions = pcall(require, "telescope.actions")
if not a_ok then
  return
end

-- TODO: configure telescope-tabs window
local t_ok, telescope_tabs = pcall(require, 'telescope-tabs')

if not t_ok then
  return
end

-- TODO: 
-- Include the tab number that can be filtered
telescope_tabs.setup({
  show_preview = false,
  close_tab_shortcut = "C-d",
})

-- TODO: 
-- Change the layout of telescope same as noice layout
-- - the horizontal size

lvim.builtin.telescope.defaults ={
  prompt_prefix = lvim.icons.ui.Telescope .. " ",
  selection_caret = lvim.icons.ui.Forward .. " ",
  entry_prefix = "  ",
  initial_mode = "insert",
  selection_strategy = "reset",
  sorting_strategy = "descending",
  layout_strategy = "vertical",
  layout_config = {
    width = 0.75,
    preview_cutoff = 120,
    horizontal = {
      preview_width = function(_, cols, _)
        if cols < 120 then
          return math.floor(cols * 0.5)
        end
        return math.floor(cols * 0.6)
      end,
      mirror = false,
    },
    vertical = { mirror = false },
  },
}

lvim.builtin.telescope.pickers ={
  -- colorscheme = {
  --   layout_strategy = "cursor",
  --   layout_config = { width = 0.19 } 
  -- },
  find_files = {
    theme = "dropdown",
    hidden = true,
    previewer = false,
  },
  live_grep = {
    --@usage don't include the filename in the search results
    only_sort_text = true,
    theme = "dropdown",
  },
  grep_string = {
    only_sort_text = true,
    theme = "dropdown",
  },
  buffers = {
    theme = "dropdown",
    previewer = false,
    initial_mode = "insert",
    mappings = {
      i = {
        ["<C-d>"] = actions.delete_buffer,
      },
      n = {
        ["dd"] = actions.delete_buffer,
      },
    },
  },
  planets = {
    show_pluto = true,
    show_moon = true,
  },
  git_files = {
    theme = "dropdown",
    hidden = true,
    previewer = false,
    show_untracked = true,
  },
  lsp_references = {
    theme = "dropdown",
    initial_mode = "normal",
  },
  lsp_definitions = {
    theme = "dropdown",
    initial_mode = "normal",
  },
  lsp_declarations = {
    theme = "dropdown",
    initial_mode = "normal",
  },
  lsp_implementations = {
    theme = "dropdown",
    initial_mode = "normal",
  },
}

lvim.builtin.telescope.defaults.file_ignore_patterns = {
	".git/",
	"target/",
	"docs/",
	"vendor/*",
	"%.lock",
	"__pycache__/*",
	"%.sqlite3",
	"%.ipynb",
	"node_modules/*",
	-- "%.jpg",
	-- "%.jpeg",
	-- "%.png",
	"%.svg",
	"%.otf",
	"%.ttf",
	"%.webp",
	".dart_tool/",
	".github/",
	".gradle/",
	".idea/",
	".settings/",
	".vscode/",
	"__pycache__/",
	"build/",
	"env/",
	"gradle/",
	"node_modules/",
	"%.pdb",
	"%.dll",
	"%.class",
	"%.exe",
	"%.cache",
	"%.ico",
	"%.pdf",
	"%.dylib",
	"%.jar",
	"%.docx",
	"%.met",
	"smalljre_*/*",
	".vale/",
	"%.burp",
	"%.mp4",
	"%.mkv",
	"%.rar",
	"%.zip",
	"%.7z",
	"%.tar",
	"%.bz2",
	"%.epub",
	"%.flac",
	"%.tar.gz",
}

lvim.builtin.telescope.defaults.mappings = {
	-- for input mode
	i = {
		["<C-n>"] = actions.cycle_history_next,
		["<C-p>"] = actions.cycle_history_prev,

		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,

		["<C-b>"] = actions.results_scrolling_up,
		["<C-f>"] = actions.results_scrolling_down,

		["<C-c>"] = actions.close,

		["<Down>"] = actions.move_selection_next,
		["<Up>"] = actions.move_selection_previous,

		["<CR>"] = actions.select_default,
		["<C-s>"] = actions.select_horizontal,
		["<C-v>"] = actions.select_vertical,
		["<C-t>"] = actions.select_tab,

		["<c-d>"] = require("telescope.actions").delete_buffer,

		-- ["<C-u>"] = actions.preview_scrolling_up,
		-- ["<C-d>"] = actions.preview_scrolling_down,

		-- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
		["<Tab>"] = actions.close,
		["<S-Tab>"] = actions.close,
		-- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
		["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
		["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
		["<C-l>"] = actions.complete_tag,
		["<C-h>"] = actions.which_key, -- keys from pressing <C-h>
		["<esc>"] = actions.close,
	},
	-- for normal mode
	n = {
		["<esc>"] = actions.close,
		["<CR>"] = actions.select_default,
		["<C-x>"] = actions.select_horizontal,
		["<C-v>"] = actions.select_vertical,
		["<C-t>"] = actions.select_tab,
		["<C-b>"] = actions.results_scrolling_up,
		["<C-f>"] = actions.results_scrolling_down,

		["<Tab>"] = actions.close,
		["<S-Tab>"] = actions.close,
		-- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
		-- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
		["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
		["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

		["j"] = actions.move_selection_next,
		["k"] = actions.move_selection_previous,
		["H"] = actions.move_to_top,
		["M"] = actions.move_to_middle,
		["L"] = actions.move_to_bottom,
		["q"] = actions.close,
		["dd"] = require("telescope.actions").delete_buffer,
		["s"] = actions.select_horizontal,
		["v"] = actions.select_vertical,
		["t"] = actions.select_tab,

		["<Down>"] = actions.move_selection_next,
		["<Up>"] = actions.move_selection_previous,
		["gg"] = actions.move_to_top,
		["G"] = actions.move_to_bottom,

		["<C-u>"] = actions.preview_scrolling_up,
		["<C-d>"] = actions.preview_scrolling_down,

		["<PageUp>"] = actions.results_scrolling_up,
		["<PageDown>"] = actions.results_scrolling_down,

		["?"] = actions.which_key,
	},
}


