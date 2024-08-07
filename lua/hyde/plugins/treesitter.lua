return {
  "nvim-treesitter/nvim-treesitter-context",
  "nvim-treesitter/nvim-treesitter-textobjects",
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    branch = 'master',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        dependencies = {
          "nvim-treesitter/nvim-treesitter-textobjects",
        },

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['aa'] = '@parameter.outer',
              ['ia'] = '@parameter.inner',
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              [']m'] = '@block.outer',
              [']]'] = '@class.outer',
            },
            goto_next_end = {
              [']M'] = '@block.outer',
              [']['] = '@class.outer',
            },
            goto_previous_start = {
              ['[m'] = '@block.outer',
              ['[['] = '@class.outer',
            },
            goto_previous_end = {
              ['[M'] = '@block.outer',
              ['[]'] = '@class.outer',
            },
          },
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        }
      }

      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end
  },
  -- "nvim-treesitter/playground"
}
