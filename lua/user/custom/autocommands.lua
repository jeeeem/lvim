-- :h expand
-- %		current file name
-- #		alternate file name
-- #n		alternate file name n
-- <cfile>		file name under the cursor
-- <afile>		autocmd file name
-- <abuf>		autocmd buffer number (as a String!)
-- <amatch>	autocmd matched name
-- <sfile>		sourced script file or function name
-- <slnum>		sourced script line number or function
--     line number
-- <sflnum>	script file line number, also when in
--     a function
-- <SID>		"<SNR>123_"  where "123" is the
--     current script ID  |<SID>|
-- <cword>		word under the cursor
-- <cWORD>		WORD under the cursor
-- <client>	the {clientid} of the last received
--     message |server2client()|
-- Modifiers:
-- :p		expand to full path
-- :h		head (last path component removed)
-- :t		tail (last path component only)
-- :r		root (one extension removed)
-- :e		extension only

-- Autocommands (https://neovim.io/doc/user/autocmd.html)aut
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Augroups
local fold = augroup("Fold Persistence", { clear = true })
local general_settings = augroup("General Settings", { clear = true })
local git = augroup("Git Settings", { clear = true })
-- local i3config = augroup("I3config Syntax Highlight", { clear = true })
local lsp = augroup("Lsp Settings", { clear = true })
local markdown = augroup("Markdown Settings", { clear = true })
local spectre = augroup("Specter Highlights", { clear = true })

-- create skeleton when creating .feature file
local skeleton = augroup("Skeleton Template", { clear = true })

-- General settings Augroup
-- autocmd({ "User" }, {
-- 	pattern = { "AlphaReady" },
-- 	callback = function()
-- 		vim.cmd [[
--       set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
--       set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
--     ]]
-- 	end,
-- })

-- autocmd("FileType", {
-- 	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel", "vim", "notify" },
-- 	command = "nnoremap <silent> <buffer> q :close<CR>",
-- 	group = general_settings,
-- })

-- autocmd("FileType", {
-- 	pattern = "qf",
-- 	command = "set nobuflisted",
-- 	group = general_settings,
-- })

-- autocmd("FileType", {
-- 	pattern = { "undotree" },
-- 	command = "vertical resize 40",
-- 	group = general_settings,
-- })

-- autocmd("DapuiWindowsSetup BufWinLeave", {
-- 	command = "vertical resize 40",
-- 	group = general_settings,
-- })

-- Text behaviour
-- o.formatoptions = o.formatoptions
--                    + 't'    -- auto-wrap text using textwidth
--                    + 'c'    -- auto-wrap comments using textwidth
--                    + 'r'    -- auto insert comment leader on pressing enter
--                    - 'o'    -- don't insert comment leader on pressing o
--                    + 'q'    -- format comments with gq
--                    - 'a'    -- don't autoformat the paragraphs (use some formatter instead)
--                    + 'n'    -- autoformat numbered list
--                    - '2'    -- I am a programmer and not a writer
--                    + 'j'    -- Join comments smartly

autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general_settings,
  desc = "Disable New Line Comment",
})

-- autocmd("VimResized", {
-- 	command = "tabdo wincmd =",
-- 	group = general_settings,
-- })

autocmd("ColorScheme", {
  callback = function()
    -- hack until this bug fix "https://github.com/neovim/neovim/issues/20309"
    vim.cmd [[highlight Cursor cterm=bold gui=bold guifg=#c0caf5 guibg=#e0af68]]
  end,
  group = general_settings,
})

-- LSP Highlight Augroup
autocmd("ColorScheme", {
  callback = function()
    -- vim.cmd [[highlight NormalFloat guifg=#29a4bd guibg=#1f2335]]
    -- vim.cmd [[highlight FloatBorder guifg=#29a4bd guibg=#1f2335]]
    vim.cmd [[highlight DiagnosticVirtualTextError  guifg=#f53131 guibg=#fff]]
    vim.cmd [[highlight DiagnosticFloatingError  guifg=#fff guibg=#fff]]
    vim.cmd [[highlight FidgetTask ctermfg=242 guifg=#364A82]]
    -- vim.cmd [[highlight LightBulbFloatWin guifg=#EED333 ]]
    -- vim.cmd [[highlight FocusedSymbol cterm=italic ctermfg=4 ctermbg=11 gui=bold,italic guifg=red guibg=#FFF]]
  end,
  group = lsp,
})

-- autocmd({ "CursorHold", "CursorHoldI" }, {
-- 	callback = function()
-- 		-- local lightbulb = [[lua require("nvim-lightbulb").update_lightbulb {
-- 		-- 	sign = { enabled = false },
-- 		-- 	float = { enabled = true, text = "ﯦ" },
-- 		-- 	win_opts = { win_blend = 80 },
-- 		-- 	ignore = { "null-ls" },
-- 		-- }]]
-- 		-- vim.cmd(lightbulb)
-- 		vim.cmd [[lua require'nvim-lightbulb'.update_lightbulb({sign= {enabled =false}, float= {enabled =true, text="ﯦ"}, win_opts={win_blend=80}, ignore={"null-ls"}})]]
-- 	end,
-- 	group = lsp,
-- })

-- Git Settings Augroup
autocmd("FileType", {
  pattern = "gitcommit",
  command = "setlocal wrap | setlocal spell",
  group = git,
})

-- Markdown Augroup
-- TODO: Fix the markdown syntax
autocmd(
  { "BufNewFile", "BufFilePre", "BufRead" },
  { pattern = "*.md", command = "set filetype=markdown", group = markdown }
)

-- TODO: Fix the markdown syntax
autocmd("FileType", {
  pattern = { "vimwiki", "md" },
  command = "set filetype=markdown",
  group = markdown,
})

-- autocmd("FileType", {
-- 	pattern = { "markdown", "markdown.pandoc" },
-- 	callback = function()
-- 		vim.set_local.wrap = true
-- 		vim.set_local.spell = true
-- 	end,
-- 	group = markdown,
-- })

-- Spectre Augroup
autocmd("ColorScheme", {
  callback = function()
    vim.cmd [[highlight DiffChange guifg=#f53131 guibg=#fff]]
    vim.cmd [[highlight DiffDelete guifg=#00FF00 guibg=#fff]]
  end,
  group = spectre,
})

-- Fold Augroup
autocmd("BufWritePre", { command = "mkview", group = fold })
autocmd("BufRead", { command = "silent! loadview", group = fold })

-- i3 Augruop
-- autocmd("FileType", {
-- 	pattern = "i3",
-- 	callback = function()
-- 		vim.schedule(function()
-- 			vim.cmd [[set filetype=i3config]]
-- 		end)
-- 	end,
-- 	group = i3config,
-- })

-- Skeleton template
-- local data_path = vim.fn.stdpath "config" .. "/templates/"

-- autocmd("BufNewFile", {
-- 	pattern = "readme.md",
-- 	callback = function()
-- 		vim.cmd [[0r ~/skeletons/readme.md]]
-- 	end,
-- 	group = skeleton,
-- })

-- autocmd("BufNewFile", {
-- 	pattern = ".justfile",
-- 	callback = function()
-- 		vim.cmd [[0r ~/skeletons/.justfile]]
-- 	end,
-- 	group = skeleton,
-- })

-- autocmd("BufNewFile", {
-- 	pattern = "test",
-- 	callback = function()
-- 		vim.cmd("0r" .. data_path .. "/test")
-- 	end,
-- 	group = skeleton,
-- })
-- autocmd BufWinEnter * :set sessionoptions+=tabpages,globals

-- Fixed the auto-switch to last tab when window resizing
-- https://github.com/LunarVim/LunarVim/issues/3007
vim.api.nvim_del_augroup_by_name('_auto_resize')

-- TODO:
-- Setup using Lunarvim Autocommands setup
-- https://www.lunarvim.org/docs/configuration/autocommands


-- get all autocmds
-- vim.pretty_print(vim.api.nvim_get_autocmds {group="_buffer_mappings"})
lvim.autocommands = {
  {
    "FileType",
    {
      group = "_buffer_mappings",
      pattern = {
        "notify",
        "query",
        "spectre_panel",
        "vim",
        "dapui_scopes",
        "dapui_breakpoints",
        "dapui_stacks",
        "dapui_watches",
        "dapui_console",
        "dap-repl"
      },
      callback = function()
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = true })
        vim.opt_local.buflisted = false
      end,
    }
  }
}
