local mm_ok, move = pcall(require, "mini.move")

if not mm_ok then
  return
end

-- https://github.com/echasnovski/mini.move for moving lines
move.setup({
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
    left = '<M-,>',
    right = '<M-.>',
    down = '<M-j>',
    up = '<M-k>',

    -- Move current line in Normal mode
    line_left = '<M-,>',
    line_right = '<M-.>',
    line_down = '<M-j>',
    line_up = '<M-k>',
  },
})

-- https://github.com/echasnovski/mini.bracketed for bracket shortcuts
local mb_ok, bracket = pcall(require, "mini.bracketed")

if not mb_ok then
  return
end

bracket.setup(
  {
    -- First-level elements are tables describing behavior of a target:
    -- - <suffix> - single character suffix. Used after `[` / `]` in mappings.
    --   For example, with `b` creates `[B`, `[b`, `]b`, `]B` mappings.
    --   Supply empty string `''` to not create mappings.
    -- - <options> - table overriding target options.
    -- See `:h MiniBracketed.config` for more info.
    buffer     = { suffix = 'b', options = {} },
    comment    = { suffix = 'c', options = {} },
    conflict   = { suffix = 'x', options = {} },
    diagnostic = { suffix = 'd', options = { float = true } },
    file       = { suffix = 'f', options = {} },
    indent     = { suffix = 'i', options = {} },
    jump       = { suffix = 'j', options = {} },
    location   = { suffix = 'l', options = {} },
    oldfile    = { suffix = 'o', options = {} },
    quickfix   = { suffix = 'q', options = {} },
    treesitter = { suffix = 't', options = {} },
    undo       = { suffix = 'u', options = {} },
    window     = { suffix = 'w', options = {} },
    yank       = { suffix = 'y', options = {} },
  }
)

-- https://github.com/echasnovski/mini.basics for toggling vim options (number, wrap)
local mbs_ok, basic = pcall(require, "mini.basics")

if not mbs_ok then
  return
end

-- TODO: steal the toggle prefix so we can remove mini.basics plugin
basic.setup(
  {
    -- Options. Set to `false` to disable.
    options = {
      -- Basic options ('termguicolors', 'number', 'ignorecase', and many more)
      basic = false,
      -- Extra UI features ('winblend', 'cmdheight=0', ...)
      extra_ui = false,
      -- Presets for window borders ('single', 'double', ...)
      win_borders = 'default',
    },
    -- Mappings. Set to `false` to disable.
    mappings = {
      -- Basic mappings (better 'jk', save with Ctrl+S, ...)
      basic = false,
      -- Prefix for mappings that toggle common options ('wrap', 'spell', ...).
      -- Supply empty string to not create these mappings.
      -- https://github.com/echasnovski/mini.nvim/blob/91f7a680fe5765b68456ab6e7b910d478da083b9/lua/mini/basics.lua#L584-L603
      option_toggle_prefix = [[\]],
      -- Window navigation with <C-hjkl>, resize with <C-arrow>
      windows = false,
      -- Move cursor in Insert, Command, and Terminal mode with <M-hjkl>
      move_with_alt = false,
    },
    -- Autocommands. Set to `false` to disable
    autocommands = {
      -- Basic autocommands (highlight on yank, start Insert in terminal, ...)
      basic = false,
      -- Set 'relativenumber' only in linewise and blockwise Visual mode
      relnum_in_visual_mode = false,
    },
  }
)

-- https://github.com/echasnovski/mini.ai
-- https://github.com/echasnovski/mini.align
-- https://github.com/echasnovski/mini.bufremove
-- https://github.com/echasnovski/mini.sessions
-- https://github.com/folke/persistence.nvim
