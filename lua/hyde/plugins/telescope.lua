return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  {
    "nvim-telescope/telescope.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      require('telescope').setup({
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          }
        }
      })

      require('telescope').load_extension('fzf')
      require('telescope').load_extension('luasnip')

      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end)
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

      vim.keymap.set('n', '<leader>pl', function()
        builtin.grep_string({ search = '' })
      end)

      vim.keymap.set('n', 'gr', builtin.lsp_references, {})
      vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols, {})
      vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
      vim.keymap.set('n', '<leader>ts', builtin.lsp_document_symbols, {})
    end
  }
}
