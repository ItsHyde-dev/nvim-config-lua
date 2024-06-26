return {
  -- {
  -- 'nvim-java/nvim-java',
  -- ft = { "java" },
  -- dependencies = {
  -- 'nvim-java/lua-async-await',
  -- 'nvim-java/nvim-java-core',
  -- 'nvim-java/nvim-java-test',
  -- 'nvim-java/nvim-java-dap',
  -- 'MunifTanjim/nui.nvim',
  -- 'neovim/nvim-lspconfig',
  -- 'mfussenegger/nvim-dap',
  -- {
  -- 'williamboman/mason.nvim',
  -- opts = {
  -- registries = {
  -- 'github:nvim-java/mason-registry',
  -- 'github:mason-org/mason-registry',
  -- },
  -- },
  -- }
  -- }
  -- },
  {
    -- LSP
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      -- { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      -- Change the Diagnostic symbols in the sign column (gutter)
      -- (not in youtube nvim video)

      -- for java put this in your path
      -- export JDTLS_JVM_ARGS="-javaagent:$HOME/java-plugins/lombok.jar -Xbootclasspath/a:$HOME/java-plugins/lombok.jar"

      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end
      vim.diagnostic.config({
        virtual_text = true
      })
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
      'neovim/nvim-lspconfig'            -- to start after lspconfig
    }
  },
  {
    'akinsho/flutter-tools.nvim',
    ft = { "dart" },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  -- {
  -- 'mfussenegger/nvim-jdtls',
  -- ft = { "java" },
  -- }
}
