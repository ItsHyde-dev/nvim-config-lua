vim.keymap.set("n", "<leader>db",
  function()
    vim.api.nvim_command("DBUIToggle")
  end
)
