local ok, noice = pcall(require, "noice")
if not ok then
  return
end

-- TODO: redirect code actions to popup(?) window or default qf

noice.setup({
  messages = {
    -- NOTE: If you enable messages, then the cmdline is enabled automatically.
    -- This is a current Neovim limitation.
    enabled = true, -- enables the Noice messages UI
    view = "notify", -- default view for messages
    view_error = "notify", -- view for errors
    view_warn = "notify", -- view for warnings
    view_history = "messages", -- view for :messages
    view_search = false, -- view for search count messages. Set to `false` to disable
  },
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
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
    
    -- TODO: centered layout based on the screen size
    -- cmdline_popup.position.row = ?
    -- popupmenu.position.row = ?

    -- TODO: Programmatically centered the cmdline according to screen size
    -- See cybu `position.relative_to` for reference
    -- API
    -- vim.api.nvim_win_get_width(0)
    -- vim.api.nvim_win_get_height(0) < 36
    -- ref: https://github.com/LunarVim/LunarVim/pull/3505/files

    command_palette = {
      views = {
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },
          size = {
            min_width = 60,
            width = "auto",
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = "48%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
            max_height = 5,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "NoiceCmdlinePopupBorder" },
          },
        },
      },
    },
  },
  routes = {
    -- Show Macro messages
    {
      view = "notify",
      filter = { event = "msg_showmode" },
    },
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
    -- Remove any lines notification
    {
      filter = {
        event = "msg_show",
        find = "lines",
      },
      opts = { skip = true },
    },
    -- Remove undo changes
    {
      filter = {
        event = "msg_show",
        find = "; before #",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        find = "; after #",
      },
      opts = { skip = true },
    },
    -- Remove File Watcher
    -- {
    --   filter = {
    --     event = "msg_show",
    --     find = "halting watcher",
    --   },
    --   opts = { skip = true },
    -- },
    -- Remove search count
    -- {
    --   filter = {
    --     event = "msg_show",
    --     kind = "search_count",
    --   },
    -- opts = { skip = true },
    -- },
    -- {
    --   filter = {
    --     event = "msg_show",
    --     kind = "",
    --   },
    --   opts = { skip = true },
    -- },
    -- {
    --   filter = { event = "msg_show", min_height = 10 },
    --   view = "split",
    --   opts = { enter = true },
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
