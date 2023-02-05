local ok, zoom = pcall(require, "neo-zoom")

if not ok then
  return
end

zoom.setup{
  top_ratio = 0.15,
  left_ratio = 0.25,
  width_ratio = 0.5,
  height_ratio = 0.65,
  border = 'double',
  disable_by_cursor = true, -- zoom-out/unfocus when you click anywhere else.
  exclude_filetypes = { 'lspinfo', 'mason', 'lazy', 'fzf', 'qf' },
  exclude_buftypes = { 'terminal' },
  presets = {
    {
      filetypes = { 'dapui_.*', 'dap-repl' },
      config = {
        top_ratio = 0.27,
        left_ratio = 0.6,
        width_ratio = 0.4,
        height_ratio = 0.65,
      },
      callbacks = {
        function () vim.wo.wrap = true end,
      },
    },
  },
  -- popup = {
  --   -- NOTE: Add popup-effect (replace the window on-zoom with a `[No Name]`).
  --   -- This way you won't see two windows of the same buffer
  --   -- got updated at the same time.
  --   enabled = true,
  --   exclude_filetypes = {},
  --   exclude_buftypes = {},
  -- },
}

vim.keymap.set('n', '<C-w><CR>', function () vim.cmd('NeoZoomToggle') end, { silent = true, nowait = true })


vim.cmd [[
let g:zoomwintab_remap = 0
let g:zoomwintab_hidetabbar = 0
nmap <silent> <C-w>z :ZoomWinTabToggle <CR>
]]
