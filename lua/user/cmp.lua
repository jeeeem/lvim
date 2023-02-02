local status_cmp_ok, cmp = pcall(require, "cmp")
if not status_cmp_ok then
  return
end

local status_luasnip_ok, luasnip = pcall(require, "luasnip")
if not status_luasnip_ok then
  return
end

-- TODO: change the color of cmp cmdline when searching using noice layout
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.cmp.window.documentation = true
lvim.builtin.cmp.window.completion = {
  border = "rounded",
  winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
}
-- https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
lvim.builtin.cmp.formatting.source_names = {
  nvim_lsp = "",
  emoji = "",
  path = "",
  calc = "",
  cmp_tabnine = "",
  vsnip = "",
  luasnip = "",
  buffer = "",
  tmux = "",
  copilot = "",
  treesitter = "",
}

-- TODO: config autocomplete <c-space> to different keymap <c-/> or <c-y>
-- ref: https://github.com/neovim/neovim/issues/8435

-- lvim.builtin.cmp.mapping = cmp.mapping.preset.insert {
--   ["<C-/>"] = cmp.mapping.complete(),
-- }

-- lvim.builtin.cmp = {
--   mapping = {
--     cmp.mapping.preset.insert {
--       ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
--       ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
--       ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select }, { "i" }),
--       ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select }, { "i" }),
--       ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--       ["<C-f>"] = cmp.mapping.scroll_docs(4),
--       ["<C-y>"] = cmp.mapping {
--         i = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false },
--         c = function(fallback)
--           if cmp.visible() then
--             cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
--           else
--             fallback()
--           end
--         end,
--       },
--       ["<Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item()
--         elseif luasnip.expand_or_locally_jumpable() then
--           luasnip.expand_or_jump()
--         elseif jumpable(1) then
--           luasnip.jump(1)
--         elseif has_words_before() then
--           -- cmp.complete()
--           fallback()
--         else
--           fallback()
--         end
--       end, { "i", "s" }),
--       ["<S-Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item()
--         elseif luasnip.jumpable(-1) then
--           luasnip.jump(-1)
--         else
--           fallback()
--         end
--       end, { "i", "s" }),
--       ["<C-Space>"] = cmp.mapping.complete(),
--       ["<C-e>"] = cmp.mapping.abort(),
--       ["<CR>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--           local confirm_opts = vim.deepcopy(lvim.builtin.cmp.confirm_opts) -- avoid mutating the original opts below
--           local is_insert_mode = function()
--             return vim.api.nvim_get_mode().mode:sub(1, 1) == "i"
--           end
--           if is_insert_mode() then -- prevent overwriting brackets
--             confirm_opts.behavior = cmp.ConfirmBehavior.Insert
--           end
--           if cmp.confirm(confirm_opts) then
--             return -- success, exit early
--           end
--         end
--         fallback() -- if not exited early, always fallback
--       end),
--     }

--   }
-- }
