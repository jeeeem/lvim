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
lvim.builtin.which_key.mappings["h"] = {"<cmd>lua toggle_hlsearch()<cr>", "Toggle Highlights"}

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
  d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
  w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
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
  s = { "<cmd>PackerSync<cr>", "Sync" },
  S = { "<cmd>PackerStatus<cr>", "Status" },
  u = { "<cmd>PackerUpdate<cr>", "Update" },
}

lvim.builtin.which_key.mappings["s"] = {
  name = "Search",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<cr>", "Find File" },
  -- f = { require("lvim.core.telescope.custom-finders").find_project_files, "Find File" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  t = { "<cmd>Telescope live_grep<cr>", "Text" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  p = {
    "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Treesitter",
  -- TODO: do the noice redirect function to show it in a split popup, not a notif.
  i = { ":TSConfigInfo<cr>", "Info" },
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
