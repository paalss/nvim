local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- norwegian book

ls.add_snippets("markdown", {
  s("nobook", {
    t("---"),
    t({ "", "lang: no" }),
    t({ "", "title: " }), i(1),
    t({ "", "series: " }), i(2),
    t({ "", "placeInSeries: " }), i(3),
    t({ "", "author: " }), i(4),
    t({ "", "rating: " }), i(5),
    t({ "", "readOrder: " }), i(6),
    t({ "", "tags: ['" }), i(7), t("']"),
    t({ "", "cover: ../../assets/" }), i(8),
    t({ "", "layout: ../../layouts/PostLayout.astro" }),
    t({ "", "---" }),
  })
})

    -- t({ "", "slug: " }), i(3),

-- norwegian book but it's translated

ls.add_snippets("markdown", {
  s("notransbook", {
    t("---"),
    t({ "", "lang: no" }),
    t({ "", "title: " }), i(1),
    t({ "", "series: " }), i(2),
    t({ "", "placeInSeries: " }), i(3),
    t({ "", "author: " }), i(4),
    t({ "", "rating: " }), i(5),
    t({ "", "readOrder: " }), i(6),
    t({ "", "tags: ['" }), i(7), t("']"),
    t({ "", "cover: ../../assets/" }), i(8),
    t({ "", "layout: ../../layouts/PostLayout.astro" }),
    t({ "", "---" }),
  })
})


-- english book

ls.add_snippets("markdown", {
  s("enbook", {
    t("---"),
    t({ "", "lang: en" }),
    t({ "", "title: " }), i(1),
    t({ "", "series: " }), i(2),
    t({ "", "placeInSeries: " }), i(3),
    t({ "", "author: " }), i(4),
    t({ "", "rating: " }), i(5),
    t({ "", "readOrder: " }), i(6),
    t({ "", "tags: ['" }), i(7), t("']"),
    t({ "", "cover: ../../assets/" }), i(8),
    t({ "", "layout: ../../layouts/PostLayout.astro" }),
    t({ "", "---" }),
  })
})

-- :set filetype

ls.add_snippets("lua", {
  s("nmap", {
    t('vim.keymap.set("n", "'), i(1), t('", "'), i(2), t('", { desc = "'), i(3), t('" })')
  })
})

ls.add_snippets("lua", {
  s("imap", {
    t('vim.keymap.set("i", "'), i(1), t('", "'), i(2), t('", { desc = "'), i(3), t('" })')
  })
})

ls.add_snippets("javascriptreact", {
  s("useEffect", {
    t('useEffect(() => {'),
    i(1),
    t({ "", "}, [])" })
  })
})


ls.add_snippets("javascriptreact", {
  s("tt", {
    t("t('"), i(1), t("')")
  })
})

-- ```bash
--
-- ```

ls.add_snippets("markdown", {
  s("title", {
    t("--------------------------------------------------------"),
    t({"", ""}), i(1),
    t({"", "--------------------------------------------------------"})
  })
})

ls.add_snippets("markdown", {
  s("sh", {
    t("```sh"),
    t({"", ""}), i(1),
    t({"", "```"})
  })
})

ls.add_snippets("markdown", {
  s("bash", {
    t("```bash"),
    t({"", ""}), i(1),
    t({"", "```"})
  })
})

ls.add_snippets("markdown", {
  s("tsx", {
    t("```tsx"),
    t({"", ""}), i(1),
    t({"", "```"})
  })
})


ls.add_snippets("javascript", {
  s("log", {
    t("console.log("), i(1), t(")")
  })
})

ls.add_snippets("javascript", {
  s("warn", {
    t("console.warn("), i(1), t(")")
  })
})

ls.add_snippets("javascript", {
  s("error", {
    t("console.error("), i(1), t(")")
  })
})

ls.add_snippets("javascriptreact", {
  s("log", {
    t("console.log("), i(1), t(")")
  })
})

ls.add_snippets("javascriptreact", {
  s("warn", {
    t("console.warn("), i(1), t(")")
  })
})

ls.add_snippets("javascriptreact", {
  s("error", {
    t("console.error("), i(1), t(")")
  })
})

ls.add_snippets("javascript", {
  s("logvar", {
    t("console.log('"), i(1), t("': "), i(2), t(")")
  })
})
