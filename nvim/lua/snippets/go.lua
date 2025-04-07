local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('go', {
  s('pln', { t 'fmt.Println(', i(1), t ')' }),
  s('prf', { t 'fmt.Printf()' }),
})
