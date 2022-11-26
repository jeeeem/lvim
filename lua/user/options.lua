-- general
lvim.log.level = "info"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- Lvim default plugins
lvim.builtin.bufferline.active = false
lvim.builtin.breadcrumbs.active = true
lvim.builtin.dap.active = true

local powershell_options = {
  shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

local general_options = {
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- Space in neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	colorcolumn = "100", -- line down for margin
	textwidth = 100, -- Maximum width for text
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 1, -- disable tabline at startup until entering in the speicfic filetype
	laststatus = 3, -- disable statusline at startup until entering in the speicfic filetype
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 300, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	wrap = false, -- display lines as one long line
	scrolloff = 1, -- is one of my fav
	sidescrolloff = 8,
	spell = true, -- Enable spell checker
	--guifont = "monospace:h17",               -- the font used in graphical neovim applications
	--guifont = "Iosevka Nerd Font:h12", -- the font used in graphical neovim applications
}

-- Better window line seperator when using global status `laststatus=3`
vim.opt.fillchars = {
	horiz = "━",
	horizup = "┻",
	horizdown = "┳",
	vert = "┃",
	vertleft = "┫",
	vertright = "┣",
	verthoriz = "╋",
}

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

-- vim.o.formatoptions = vim.o.formatoptions .. "cr"
-- vim.bo.formatoptions = vim.o.formatoptions:gsub("c", "")
-- vim.o.formatoptions = vim.o.formatoptions .. "tcrqnj"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
vim.opt.shortmess:append "c"
vim.opt.whichwrap:append "<,>,[,],h,l"

local options = general_options

if vim.fn.has('win32') == 1 then
  options = vim.tbl_deep_extend('error', powershell_options, general_options)

  -- Set a compatible clipboard manager
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
