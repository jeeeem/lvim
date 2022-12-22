local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap_set = vim.keymap.set
local keymap_del = vim.keymap.del

lvim.leader = "space"

-- Normal Mode
lvim.keys.normal_mode["<C-s>"] = ":up<cr>"
-- lvim.keys.normal_mode["<S-CR>"] = "O<Esc>"

-- TODO: if there is no .git use `Telescope find_files` in the current directory
keymap_set("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap_set("", "<C-z>", "<Nop>", opts) -- Remove C-z suspending key

-- Centered the searched text
keymap_set(
  'c', '<CR>',
  function() return vim.fn.getcmdtype() == '/' and '<CR>zzzv' or '<CR>' end,
  { expr = true }
)

-- keymap_set(
--   'n', 'n',
--   function() return vim.fn.getcmdtype() == '/' and 'nzzzv' or '<CR>' end,
--   opts
-- )

-- Delete Lvim default moving text commands
keymap_del("n", "<A-j>")
keymap_del("n", "<A-k>")

-- Insert mode
-- Press jk fast to enter
keymap_set("i", "jk", "<ESC>", opts)

-- Visual Mode
keymap_set("v", "p", '"_dP', opts)

-- Better terminal navigation
keymap_set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap_set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap_set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap_set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Open URL link
-- keymap_set("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- keymap_set("n", "gx", ":lua vim.fn.execute('!start ' .. vim.fn.expand('<cfile>'))<cr>", opts)
keymap_set("n", "gx",
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


