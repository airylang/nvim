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
  },

  highlights = {
    -- buffer 选中时 文字修改为非斜体（默认为斜体）
    buffer_selected = {
      italic = false,
    },
  }
}
