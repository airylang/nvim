require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

require('nvim_comment').setup({
  -- normal
  -- line_mapping = "\\\\",
  line_mapping = "<M-\\>",

  -- Visual/Operator mapping left hand side
  operator_mapping = "<C-\\>",
  hook = function()
    require("ts_context_commentstring.internal").update_commentstring()
  end,
})
