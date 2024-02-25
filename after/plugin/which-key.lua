local wk = require("which-key")

wk.register({
  a = {
    "Add to harpoon"
  },
  tb = {
    "Git blame"
  },
}, { prefix = "<leader>" })

wk.register({
  name = "hard coded macros",
  e = {
    name = "className={} toggle `${}`",
    e = { "f{a`${<esc>f}i}`<esc>B", "{classes.___} -> {`${classes.___} `}" },
    d = { "f`xxxf}xxB", "{`${classes.___}`} -> {classes.___}" },
  },
  a = { "ggVG", "mark all" },
  ya = { "ggVGy", "yank all" },
  pa = { "ggVGp", "paste all" },
  s = {
    name = "case toggle",
    s = { "f_x~", "snake_case -> camelCase" },
  }
}, { prefix = "-" })
