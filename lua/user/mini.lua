local ok, mini_move = pcall(require, "mini.move")

if not ok then
  return
end

-- https://github.com/echasnovski/mini.move
mini_move.setup({
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

-- https://github.com/echasnovski/mini.ai
-- https://github.com/echasnovski/mini.align
-- https://github.com/echasnovski/mini.bufremove
-- https://github.com/echasnovski/mini.sessions
-- https://github.com/folke/persistence.nvim
