local ok, transparent = pcall(require, "transparent")

if not ok then
  return
end

lvim.colorscheme = "tokyonight"
vim.g.tokyonight_transparent = vim.g.transparent_enabled

transparent.setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer', 'NormalSB', 'Pmenu',
  },
  extra_groups = { -- table: additional groups that should be cleared
    'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
    'FloatBorder',
    'NvimTreeWinSeparator',
    'NvimTreeNormal',
    'TroubleNormal',
    'TelescopeNormal',
    'TelescopeBorder',
    'WhichKeyFloat',

    -- TODO: programmatically add this
    'NotifyINFOBody',
    'NotifyERRORBody',
    'NotifyWARNBody',
    'NotifyDEBUGBody',
    'NotifyTRACEBody',
    'NotifyINFOBorder',
    'NotifyERRORBorder',
    'NotifyWARNBorder',
    'NotifyDEBUGBorder',
    'NotifyTRACEBorder',
  },
  exclude_groups = {}, -- table: groups you don't want to clear
})

vim.g.transparent_groups = vim.list_extend(
  vim.g.transparent_groups or {},
  vim.tbl_map(function(v)
    return v.hl_group
  end, vim.tbl_values(require('bufferline.config').highlights))
)

-- Possible colorschemes
  -- https://github.com/EdenEast/nightfox.nvim
  -- https://github.com/projekt0n/github-nvim-theme
  -- https://github.com/catppuccin/nvim
  -- https://github.com/Mofiqul/vscode.nvim
