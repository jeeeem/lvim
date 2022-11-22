-- require("styler").setup({
--   themes = {
--     text = { colorscheme = "delek" },
--   },
-- })

local ok, styler = pcall(require, "styler")
if not ok then
  return
end

styler.setup({
  themes = {
    -- text = { colorscheme = "catppuccin-latte", background = "latte" },
    help = { colorscheme = "catppuccin-mocha", background = "dark" },
  },
})
