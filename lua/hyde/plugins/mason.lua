return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({})

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed

    })

    -- LSP Config
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
      keymap.set('n', 'gr', "<cmd>Telescope lsp_references<CR>", opts)
      keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
      keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
      keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local lspconfig = require("lspconfig")

    mason_lspconfig.setup_handlers {
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      function(server_name) -- default handler (optional)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach
        })
      end,
      -- Next, you can provide a dedicated handler for specific servers.
      -- For example, a handler override for the `rust_analyzer`:
      lspconfig["tsserver"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          files = { "typescript", "javascript", "typescriptreact", "javascriptreact", "json", "html", "css", "scss", "less", "graphql", "markdown", "yaml", "markdown.mdx", "vue", "svelte", "js" },
      })
      -- ["rust_analyzer"] = function()
      -- require("rust-tools").setup {}
      -- end
    }

    mason_tool_installer.setup({})
  end,
}
