local ok, hlslens = pcall(require, "hlslens")

if not ok then
  return
end

hlslens.setup({
  calm_down = true,
  -- nearest_only = true,
  -- nearest_float_when = 'always'
})

local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

