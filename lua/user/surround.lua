local ok, surround = pcall(require, "nvim-surround")

if not ok then
  return
end

surround.setup({})

-- :h nvim-surround.configuration

-- https://github.com/XXiaoA/ns-textobject.nvim
