require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
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
      set_jumps = true, -- whether to set jumps in the jumplist
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
    -- swap = {
    -- enable = true,
    -- swap_next = {
    -- ['<leader>a'] = '@parameter.inner',
    -- },
    -- swap_previous = {
    -- ['<leader>A'] = '@parameter.inner',
    -- },
    -- },
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
