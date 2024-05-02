return {
  "nvim-tree/nvim-tree.lua",
  event="VeryLazy",
  config=function()
    require("nvim-tree").setup({
      view = {
        float = {
          enable = true
        }
      }
    })

    vim.keymap.set("n", "<leader><leader>", ":NvimTreeToggle<CR>")
  end
}
