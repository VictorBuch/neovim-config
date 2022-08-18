local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
	-- mapping for cutting selected text so it's usable as SELECT_DEDENT,
	-- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
	store_selection_keys = "<Tab>",
})

-- some shorthands...local s = ls.snippet
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local extras = require("luasnip.extras")
local m = extras.m
local l = extras.l
local rep = extras.rep
local postfix = require("luasnip.extras.postfix").postfix

local same = function(index)
	return f(function(arg)
		return arg[1]
	end, { index })
end

local divWithClass = function()
	return {
		t('<div class="'),
		i(1, "class"),
		t('"> '),
		i(2),
		t(" </div>"),
	}
end

local consoleLog = function()
	return {
		t("console.log("),
		i(1),
		t(")"),
	}
end

local consoleLogString = function()
	return {
		t('console.log("'),
		i(1),
		t('")'),
	}
end

local consoleLogStringValue = function()
	return fmt('console.log("{}", {})', { same(1), i(1) })
end

local class = function()
	return {
		t('class="'),
		i(1),
		t('" '),
	}
end

local ternary = function()
	return {
		i(1, "cond"),
		t(" ? "),
		i(2, "then"),
		t(" : "),
		i(3, "else"),
	}
end

local arrowFunction = function()
	return {
		t("const "),
		i(1),
		t(" = ("),
		i(2),
		t({ ") => {", " " }),
		i(3),
		t({ " ", "}" }),
	}
end

local ref = function()
	return fmt([[const {} = ref({});]], { i(1), i(2, "null") })
end

ls.add_snippets(nil, {
	all = {
		s({
			trig = "d",
			dscr = "Div with class",
		}, divWithClass()),
		s({
			trig = "c",
			dscr = "html class",
		}, class()),
		s({
			trig = "cl",
			dscr = "Console log",
		}, consoleLog()),
		s({
			trig = "cls",
			dscr = "Console log string",
		}, consoleLogString()),
		s({
			trig = "clsv",
			dscr = "Console log string value",
		}, consoleLogStringValue()),
		s({
			trig = "tern",
			dscr = "Ternary",
		}, ternary()),
		s({
			trig = "af",
			dscr = "Arrow function",
		}, arrowFunction()),
	},
	vue = {
		s({
			trig = "ref",
			dscr = "Reference",
		}, ref()),
	},
})
