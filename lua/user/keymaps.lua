local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap_set = vim.keymap.set
local keymap_del = vim.keymap.del

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":up<cr>"

keymap_set("n", "<C-p>", "<cmd>Telescope git_files<cr>", opts)
keymap_set("", "<C-z>", "<Nop>", opts) -- Remove C-z suspending key

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


-- Open url
keymap_set("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
