require('nvim-biscuits').setup({
  cursor_line_only = true,
  default_config = {
    max_length = 50,
    min_distance = 5,
    prefix_string = " 📎 "
  },
  language_config = {
    html = {
      prefix_string = " 🌐 "
    },
    javascript = {
      prefix_string = " ✨ ",
      max_length = 80
    },
  }
})
