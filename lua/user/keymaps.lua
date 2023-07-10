local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local set = vim.keymap.set
local del = vim.keymap.del

-- `:h map-table`
--            Mode  | Norm | Ins | Cmd | Vis | Sel | Opr | Term | Lang |
-- Command        +------+-----+-----+-----+-----+-----+------+------+
-- [nore]map      | yes  |  -  |  -  | yes | yes | yes |  -   |  -   |
-- n[nore]map     | yes  |  -  |  -  |  -  |  -  |  -  |  -   |  -   |
-- [nore]map!     |  -   | yes | yes |  -  |  -  |  -  |  -   |  -   |
-- i[nore]map     |  -   | yes |  -  |  -  |  -  |  -  |  -   |  -   |
-- c[nore]map     |  -   |  -  | yes |  -  |  -  |  -  |  -   |  -   |
-- v[nore]map     |  -   |  -  |  -  | yes | yes |  -  |  -   |  -   |
-- x[nore]map     |  -   |  -  |  -  | yes |  -  |  -  |  -   |  -   |
-- s[nore]map     |  -   |  -  |  -  |  -  | yes |  -  |  -   |  -   |
-- o[nore]map     |  -   |  -  |  -  |  -  |  -  | yes |  -   |  -   |
-- t[nore]map     |  -   |  -  |  -  |  -  |  -  |  -  | yes  |  -   |
-- l[nore]map     |  -   | yes | yes |  -  |  -  |  -  |  -   | yes  |

lvim.leader = "space"

-- Normal Mode
lvim.keys.normal_mode["<C-s>"] = ":up<cr>"
-- lvim.keys.normal_mode["<S-CR>"] = "O<Esc>"

-- TODO: if there is no .git use `Telescope find_files` in the current directory
-- Remove .git directory files
set("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
set("", "<C-z>", "<Nop>", opts) -- Remove C-z suspending key

-- Insert blank line by pressing 'Enter'
set('n', '<cr>', 'o<Esc>')

-- Centered the searched text
set(
  'c', '<CR>',
  function() return vim.fn.getcmdtype() == '/' and '<CR>zz' or '<CR>' end,
  { expr = true }
)

-- Centered while navigating half a screen
set('n','<c-u>', '<c-u>zz', opts)
set('n','<c-d>', '<c-d>zz', opts)

-- Centered while navigating searched text
set('n','n', 'nzz', opts)
set('n','N', 'Nzz', opts)

-- Delete Lvim default moving text commands
del("n", "<A-j>")
del("n", "<A-k>")

-- del({"n","t"}, "<C-h>")
-- del({"n","t"}, "<C-l>")
-- del({"n","t"}, "<C-j>")
-- del({"n","t"}, "<C-k>")

-- set({'n', 't'}, '<C-h>', '<CMD>lua require("Navigator").left()<CR>')
-- set({'n', 't'}, '<C-l>', '<CMD>lua require("Navigator").right()<CR>')
-- set({'n', 't'}, '<C-k>', '<CMD>lua require("Navigator").up()<CR>')
-- set({'n', 't'}, '<C-j>', '<CMD>lua require("Navigator").down()<CR>')

-- Insert mode
-- https://www.reddit.com/r/neovim/comments/v309ol/nvim_lsp_does_not_update_when_exiting_insert_mode/
set("i", "<C-c>", "<ESC>", opts)
-- Press jk fast to enter
set("i", "jk", "<ESC>", opts)

-- Visual Mode
set("v", "p", '"_dP', opts)
set('x', '/', '<Esc>/\\%V')  -- search within selection

-- Better terminal navigation
set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Open URL link
-- keymap_set("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- keymap_set("n", "gx", ":lua vim.fn.execute('!start ' .. vim.fn.expand('<cfile>'))<cr>", opts)
set("n", "gx",
  function ()
    local url = vim.fn.expand("<cfile>")

    if vim.fn.has('win32') == 1 then
      vim.fn.execute("!start " .. url)
    elseif vim.fn.has('unix') == 1 then
      vim.fn.execute("!xdg-open " .. url)
    else
      vim.notify("Cannot open the link in the browser")
    end

  end
  , opts)

-- Replace :w with :up
-- keymap_set("x", "w", "up", opts)

vim.cmd [[
" Replace :w with :up
" cnoremap w up

" Open to tab
" cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
" cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'
]]

