local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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


ls.add_snippets("markdown", {
  s("book", {
    t("---"),
    t({ "", "lang: " }), i(1),
    t({ "", "title: " }), i(2),
    t({ "", "altTitle: " }), i(3),
    t({ "", "series: " }), i(4),
    t({ "", "readOrder: " }), i(5),
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
