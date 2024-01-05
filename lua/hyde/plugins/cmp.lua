return {
  {
    "kristijanhusak/vim-dadbod-completion",
    config = function()
      local cmp = require("cmp")
      cmp.setup.buffer({ sources = { { name = 'vim-dadbod-completion' } } })
    end
  },
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',
  "avneesh0612/react-nextjs-snippets",
}
