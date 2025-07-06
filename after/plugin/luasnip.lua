local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- :set filetype
ls.add_snippets("javascriptreact", {
  -- ls.add_snippets("lua", {
  s("useEffect", {
    t('useEffect(() => {'),
    i(1),
    t({ "", "}, [])" })
  })
})

ls.add_snippets("markdown", {
  s("book", {
    t("---"),
    t({ "", "lang: " }), i(1),
    t({ "", "title: " }), i(2),
    t({ "", "originalTitle: " }), i(3),
    t({ "", "slug: " }), i(4),
    t({ "", "author: " }), i(5),
    t({ "", "placeInSeries: " }), i(6),
    t({ "", "originalSeries: " }), i(7),
    t({ "", "rating: " }), i(8),
    t({ "", "tags: ['" }), i(9), t("']"),
    t({ "", "cover: ../../assets/" }), i(10),
    t({ "", "layout: ../../layouts/PostLayout.astro" }),
    t({ "", "---" }),
  })
})
