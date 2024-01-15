return {
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {}
    end
  },
  {
    "theprimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    end
  },
  {
    'prettier/vim-prettier',
    config = function()
      vim.keymap.set("n", "<leader>fp", "<cmd>PrettierAsync<CR>")
    end
  },
  'aserebryakov/vim-todo-lists',
  'APZelos/blamer.nvim',
  {
      "Exafunction/codeium.nvim",
      dependencies = {
          "nvim-lua/plenary.nvim",
          "hrsh7th/nvim-cmp",
      },
      config = function()
          require("codeium").setup({})
          local cmp = require("cmp")
          cmp.setup({
            sources = {
              {name="codeium"}
            }
          })
      end
  },
  'Exafunction/codeium.vim',
}
