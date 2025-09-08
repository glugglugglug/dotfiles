return {
  view = {
    width = 50,
    relativenumber = true,
  },
  renderer = {
    indent_markers = { enable = true },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = { enable = false },
    },
  },
  filters = {
    custom = { ".DS_Store" },
  },
  git = {
    ignore = false,
  },
}
