local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- :set filetype
ls.add_snippets("lua", {
  s("ftw", {
      t('print("Free the Whales")')
  })
})


-- :set filetype
ls.add_snippets("javascriptreact", {
-- ls.add_snippets("lua", {
  s("useEffect", {
      t('useEffect(() => {'),
        i(1),
      t({"", "}, [])"})
  })
})



