return {
  "nvim-tree/nvim-tree.lua",
  config=function()
    require("nvim-tree").setup({
-- hijack_directories = {
-- auto_open = false
-- },
      view = {
        float = {
          enable = true
        }
      }
    })

    vim.keymap.set("n", "<leader><leader>", ":NvimTreeToggle<CR>")
  end
}
