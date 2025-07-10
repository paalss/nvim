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
    t({ "", "slug: " }), i(2),
    t({ "", "title: " }), i(3),
    t({ "", "altTitle: " }), i(4),
    t({ "", "series: " }), i(5),
    t({ "", "originalSeries: " }), i(6),
    t({ "", "placeInSeries: " }), i(7),
    t({ "", "author: " }), i(8),
    t({ "", "rating: " }), i(9),
    t({ "", "tags: ['" }), i(10), t("']"),
    t({ "", "cover: ../../assets/" }), i(11),
    t({ "", "layout: ../../layouts/PostLayout.astro" }),
    t({ "", "---" }),
  })
})
    -- t({ "", "originalTitle: " }), i(5),
