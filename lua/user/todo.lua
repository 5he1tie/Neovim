
require("todo-comments").setup {
  -- PERF: s
  -- TODO: dsad
  -- JSLee:
  keywords = {
    JSLee = {
      icon = " "
    }
  },
  highlight = {
    pattern = [[.*<(KEYWORDS)\s*]]
  }
}
