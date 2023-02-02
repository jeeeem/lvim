-- nvim-tree has some performance issues on windows, see kyazdani42/nvim-tree.lua#549
-- lvim.builtin.nvimtree.setup.diagnostics.enable = nil
-- lvim.builtin.nvimtree.setup.filters.custom = nil
-- lvim.builtin.nvimtree.setup.git.enable = nil
-- lvim.builtin.nvimtree.setup.update_cwd = nil
-- lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = nil
-- lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.setup.renderer.highlight_git = nil
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = nil

lvim.builtin.nvimtree = {
  active = true,
  on_config_done = nil,
  setup = {
    ignore_ft_on_setup = {
      "startify",
      "dashboard",
      "alpha",
    },
    auto_reload_on_write = false,
    hijack_directories = {
      enable = false,
    },
    update_cwd = true,
    diagnostics = {
      enable = lvim.use_icons,
      show_on_dirs = false,
      icons = {
        hint = lvim.icons.diagnostics.BoldHint,
        info = lvim.icons.diagnostics.BoldInformation,
        warning = lvim.icons.diagnostics.BoldWarning,
        error = lvim.icons.diagnostics.BoldError,
      },
    },
    update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
    },
    system_open = {
      cmd = nil,
      args = {},
    },
    git = {
      enable = true,
      ignore = false,
      timeout = 200,
    },
    view = {
      width = 30,
      hide_root_folder = false,
      side = "left",
      mappings = {
        custom_only = false,
        list = {},
      },
      number = false,
      relativenumber = false,
      signcolumn = "yes",
    },
    renderer = {
      indent_markers = {
        enable = false,
        icons = {
          corner = "└",
          edge = "│",
          item = "│",
          none = " ",
        },
      },
      icons = {
        webdev_colors = lvim.use_icons,
        show = {
          git = lvim.use_icons,
          folder = lvim.use_icons,
          file = lvim.use_icons,
          folder_arrow = lvim.use_icons,
        },
        glyphs = {
          default = lvim.icons.ui.Text,
          symlink = lvim.icons.ui.FileSymlink,
          git = {
            deleted = lvim.icons.git.FileDeleted,
            ignored = lvim.icons.git.FileIgnored,
            renamed = lvim.icons.git.FileRenamed,
            staged = lvim.icons.git.FileStaged,
            unmerged = lvim.icons.git.FileUnmerged,
            unstaged = lvim.icons.git.FileUnstaged,
            untracked = lvim.icons.git.FileUntracked,
          },
          folder = {
            default = lvim.icons.ui.Folder,
            empty = lvim.icons.ui.EmptyFolder,
            empty_open = lvim.icons.ui.EmptyFolderOpen,
            open = lvim.icons.ui.FolderOpen,
            symlink = lvim.icons.ui.FolderSymlink,
          },
        },
      },
      highlight_git = true,
      group_empty = false,
      root_folder_modifier = ":t",
    },
    filters = {
      dotfiles = false,
      custom = { "node_modules", "\\.cache" },
      exclude = {},
    },
    trash = {
      cmd = "trash",
      require_confirm = true,
    },
    log = {
      enable = false,
      truncate = false,
      types = {
        all = false,
        config = false,
        copy_paste = false,
        diagnostics = false,
        git = false,
        profile = false,
      },
    },
    actions = {
      use_system_clipboard = true,
      change_dir = {
        enable = true,
        global = false,
        restrict_above_cwd = false,
      },
      open_file = {
        quit_on_open = false,
        resize_window = false,
        window_picker = {
          enable = true,
          chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
          exclude = {
            filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
            buftype = { "nofile", "terminal", "help" },
          },
        },
      },
    },
    -- Temp fix until https://github.com/nvim-tree/nvim-tree.lua/issues/1822
    filesystem_watchers = {
      enable = true,
      debounce_delay = 50,
      ignore_dirs = {[[C:\\Users\\jberen\\selenium\\dragon-cssiqa-testscripts\\hrt\\target]]}
    }
  },
}
