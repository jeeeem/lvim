local ok, noice = pcall(require, "noice")
if not ok then
  return
end

noice.setup({
  -- popupmenu = {
  --   position = "50%"
  -- },
  -- cmdline_popup = {
  --   backend = "popup",
  --   relative = "editor",
  --   focusable = false,
  --   enter = false,
  --   zindex = 60,
  --   position = {
  --     row = "50%",
  --     col = "50%",
  --   },
  -- },
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    progress = {
      enabled = false,
      -- format = {
      --   { "{data.progress.percentage} ", hl_group = "Comment" },
      --   { "{spinner} ", hl_group = "NoiceLspProgressSpinner" },
      --   { "{data.progress.title} ", hl_group = "Comment" },
      -- },
      -- format_done = {},
    },
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = false, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },
  routes = {
    -- Remove which key notification
    {
      filter = {
        event = "msg_show",
        find = "go up one level",
      },
      opts = { skip = true },
    },
    -- Remove > indention notification
    {
      filter = {
        event = "msg_show",
        find = ">ed",
      },
      opts = { skip = true },
    },
    -- Remove < indention notification
    {
      filter = {
        event = "msg_show",
        find = "<ed",
      },
      opts = { skip = true },
    },
    -- Remove Keyboard interrupt notification
    {
      filter = {
        event = "msg_show",
        find = "Keyboard interrupt" },
      opts = { skip = true },
    },
    -- {
    --   filter = { event = "msg_show", min_height = 10 },
    --   view = "split",
    --   opts = { enter = true },
    -- },
    -- {
    --   filter = { event = "msg_show", kind = "search_count" },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = {
    --     event = "msg_show",
    --     find = "; before #",
    --   },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = {
    --     event = "msg_show",
    --     find = "; after #",
    --   },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = {
    --     event = "msg_show",
    --     find = " lines, ",
    --   },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = {
    --     event = "msg_show",
    --     find = "yanked",
    --   },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = { find = "waiting for cargo metadata" },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = { find = "No active Snippet" },
    --   opts = { skip = true },
    -- },
  },
})
