lvim.builtin.bufferline.active = true

lvim.keys.normal_mode["<S-x>"] = "<Cmd>lua require('user.bufferline').delete_buffer()<CR>"
lvim.keys.normal_mode["<A-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<A-l>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["[b"] = "<Cmd>BufferLineMovePrev<CR>"
lvim.keys.normal_mode["]b"] = "<Cmd>BufferLineMoveNext<CR>"

-- Use cybu when tabline is off
-- import cybu keymap
