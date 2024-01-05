return {
  {
    "folke/zen-mode.nvim",
    config = function()
      vim.keymap.set("n", "<leader>zz", function()
          require("zen-mode").setup {
              window = {
                  width = 90,
                  options = { }
              },
          }
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = true
          vim.wo.rnu = true
      end)


      vim.keymap.set("n", "<leader>zZ", function()
          require("zen-mode").setup {
              window = {
                  width = 80,
                  options = { }
              },
          }
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = false
          vim.wo.rnu = false
          vim.opt.colorcolumn = "0"
      end)
    end
  },
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'dracula',
        }
      })
    end
  },
  {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup({
        dimming = {
          alpha = 0.5
        }
      })
    end
  },
  {
    'code-biscuits/nvim-biscuits',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
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
    end
  },
  'stevearc/dressing.nvim',
}
