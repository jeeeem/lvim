---@diagnostic disable: undefined-global

-- LuaSnip Environment Variables
-- https://github.com/L3MON4D3/LuaSnip/blob/master/lua/luasnip/config.lua#L122-L147

-- TODO: add an examples to each luasnip function for reference

  -- s = require("luasnip.nodes.snippet").S,
  -- sn = require("luasnip.nodes.snippet").SN,
  -- isn = require("luasnip.nodes.snippet").ISN,
  -- t = require("luasnip.nodes.textNode").T,
  -- i = require("luasnip.nodes.insertNode").I,
  -- f = require("luasnip.nodes.functionNode").F,
  -- c = require("luasnip.nodes.choiceNode").C,
  -- d = require("luasnip.nodes.dynamicNode").D,
  -- r = require("luasnip.nodes.restoreNode").R,
  -- events = require("luasnip.util.events"),
  -- ai = require("luasnip.nodes.absolute_indexer"),
  -- extras = require("luasnip.extras"),
  -- l = require("luasnip.extras").lambda,
  -- rep = require("luasnip.extras").rep,
  -- p = require("luasnip.extras").partial,
  -- m = require("luasnip.extras").match,
  -- n = require("luasnip.extras").nonempty,
  -- dl = require("luasnip.extras").dynamic_lambda,
  -- fmt = require("luasnip.extras.fmt").fmt,
  -- fmta = require("luasnip.extras.fmt").fmta,
  -- conds = require("luasnip.extras.expand_conditions"),
  -- postfix = require("luasnip.extras.postfix").postfix,
  -- types = require("luasnip.util.types"),
  -- parse = require("luasnip.util.parser").parse_snippet,

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
