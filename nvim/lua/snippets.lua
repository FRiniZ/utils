local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
    },
    c = {
        snip({
            trig = "do",
            namr = "do {} while(0);",
            dscr = "Insert snippet do{}while(0);",
        }, {
            text({ "do", "{", "",}),
	    insert(1, ""),
	    text({"", "}","while(0);" })
        }),
    },
})


            --text({ "do", "{" }),
	    --insert(1, ""), text({""}),
	    --text({"}","while(0);" })
