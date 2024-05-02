return {
  {
    "mbbill/undotree",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
  },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    config = function()
      local trouble = require("trouble")
      trouble.setup()
      vim.keymap.set("n", "te", vim.cmd.TroubleToggle)
    end
  },
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
      local tc = require("todo-comments")
      tc.setup()
      vim.keymap.set("n", "tl", vim.cmd.TodoTelescope)
    end
  },
  {
    "theprimeagen/harpoon",
    event = "VeryLazy",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
      vim.keymap.set("n", "<C-i>a", function() ui.nav_file(1) end)
      vim.keymap.set("n", "<C-i>s", function() ui.nav_file(2) end)
      vim.keymap.set("n", "<C-i>d", function() ui.nav_file(3) end)
    end
  },
  {
    'prettier/vim-prettier',
    ft = { "javascript" },
    config = function()
      vim.keymap.set("n", "<leader>fp", "<cmd>PrettierAsync<CR>")
    end
  },
  {
    'aserebryakov/vim-todo-lists',
    ft = { "todo" },
    config = function()
      vim.g.VimTodoListsCustomKeyMapper = function()
        vim.keymap.set("n", "<leader><leader>", "<cmd>VimTodoListsToggleItem<CR>");
        vim.g.VimTodoListsDatesEnabled = 1
      end
    end
  },
  'APZelos/blamer.nvim',
  -- {
  -- "Exafunction/codeium.nvim",
  -- dependencies = {
  -- "nvim-lua/plenary.nvim",
  -- "hrsh7th/nvim-cmp",
  -- },
  -- config = function()
  -- require("codeium").setup({})
  -- end
  -- },
}
