return {
   {
     "tpope/vim-dadbod",
     config = function()
       vim.keymap.set("n", "<leader>db",
        function()
          vim.api.nvim_command("DBUIToggle")
        end
      )
     end
   },
   "kristijanhusak/vim-dadbod-ui"
}
