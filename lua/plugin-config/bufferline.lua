vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    show_buffer_close_icons = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "explorer",
        text_align = 'center',
        separator = true
      }
    },
  }
}
