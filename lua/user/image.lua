local ok, image = pcall(require, "image")

if not ok then
  return
end

image.setup({
  render = {
    min_padding = 5,
    show_label = true,
    use_dither = true,
    foreground_color = true,
    background_color = true
  },
  events = {
    update_on_nvim_resize = true,
  },
})
