return {
  "diepm/vim-rest-console",
  config=function ()
    vim.g.vrc_set_default_mapping = 0
    vim.g.vrc_response_default_content_type = 'application/json'
    vim.g.vrc_auto_format_response_patters = {
      json = "jq"
    }

    vim.keymap.set('n', '<Leader>rc', ':call VrcQuery()<CR>')
  end
}

