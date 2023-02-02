---@diagnostic disable: undefined-global

-- Snippet Examples & Config
-- https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua
-- https://github.com/L3MON4D3/LuaSnip/wiki

-- LuaSnip Environment Variables
-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md
  -- s = ls.snippet
  -- sn = ls.snippet_node
  -- isn = ls.indent_snippet_node
  -- t = ls.text_node
  -- i = ls.insert_node
  -- f = ls.function_node
  -- c = ls.choice_node
  -- d = ls.dynamic_node
  -- r = ls.restore_node
  -- events = require("luasnip.util.events")
  -- ai = require("luasnip.nodes.absolute_indexer")
  -- extras = require("luasnip.extras")
  -- l = extras.lambda
  -- rep = extras.rep
  -- p = extras.partial
  -- m = extras.match
  -- n = extras.nonempty
  -- dl = extras.dynamic_lambda
  -- fmt = require("luasnip.extras.fmt").fmt
  -- fmta = require("luasnip.extras.fmt").fmta
  -- conds = require("luasnip.extras.expand_conditions")
  -- postfix = require("luasnip.extras.postfix").postfix
  -- types = require("luasnip.util.types")
  -- parse = require("luasnip.util.parser").parse_snippet

-- TODO: add an examples to each luasnip function for reference

-- local function simple_restore(args, _)
-- 	return sn(nil, { i(1, args[1]), r(2, "dyn", i(nil, "user_text")) })
-- end

return {
	-- Current time
	s(
		"curtime",
		f(function()
			return os.date "%D - %H: %M"
		end)
	),
}
