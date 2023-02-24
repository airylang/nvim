vim.diagnostic.config({ virtual_text = true })

require("lspsaga").setup({
  diagnostic = {
    virtual_text = false,
    on_insert_follow = false,
    insert_winblend = 55,
  },
  preview = {
    lines_above = 1,
    ines_below = 17,
  },

  ui = {
    border = "shadow",
  },

  -- 在窗口左上角显示当前位置符号在工作空间中的路径
  symbol_in_winbar = {
    enable = true,
    separator = " ",
    ignore_patterns={},
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
})

local keymap = vim.keymap.set

-- LSP finder - Find the symbol's definition
-- If there is no definition, it will instead be hidden
-- When you use an action in finder like "open vsplit",
-- you can use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
--
-- -- Code action
keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
--
-- -- Rename all occurrences of the hovered word for the entire file
keymap("n", "re", "<cmd>Lspsaga rename<CR>")
--
-- -- Rename all occurrences of the hovered word for the selected files
-- keymap("n", "gr", "<cmd>Lspsaga rename ++project<CR>")
--
-- -- Peek definition
-- -- You can edit the file containing the definition in the floating window
-- -- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- -- It also supports tagstack
-- -- Use <C-t> to jump back
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
--
-- -- Go to definition
-- keymap("n","gd", "<cmd>Lspsaga goto_definition<CR>")
--
-- -- Peek type definition
-- -- You can edit the file containing the type definition in the floating window
-- -- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- -- It also supports tagstack
-- -- Use <C-t> to jump back
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")
--
-- -- Go to type definition
keymap("n","gt", "<cmd>Lspsaga goto_type_definition<CR>")
--
--
-- -- Show line diagnostics
-- -- You can pass argument ++unfocus to
-- -- unfocus the show_line_diagnostics floating window
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
--
-- -- Show cursor diagnostics
-- -- Like show_line_diagnostics, it supports passing the ++unfocus argument
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
--
-- -- Show buffer diagnostics
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
--
-- -- Diagnostic jump
-- -- You can use <C-o> to jump back to your previous location
keymap("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>")
--
-- -- Diagnostic jump with filters such as only jumping to an error
-- keymap("n", "[E", function()
--   require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
-- end)
-- keymap("n", "]E", function()
--   require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
-- end)
--
-- -- Toggle outline
keymap("n","<leader>o", "<cmd>Lspsaga outline<CR>")
--
-- -- Hover Doc
-- -- If there is no hover doc,
-- -- there will be a notification stating that
-- -- there is no information available.
-- -- To disable it just use ":Lspsaga hover_doc ++quiet"
-- -- Pressing the key twice will enter the hover window
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
--
-- -- If you want to keep the hover window in the top right hand corner,
-- -- you can pass the ++keep argument
-- -- Note that if you use hover with ++keep, pressing this key again will
-- -- close the hover window. If you want to jump to the hover window
-- -- you should use the wincmd command "<C-w>w"
keymap("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")
--
-- -- Call hierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- -- Floating terminal
keymap({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")

local function set_sidebar_icons()
  -- Set icons for sidebar.
  local diagnostic_icons = {
   Error = '',
   Warn = '',
   Info = '',
   Hint = '',
  }
  for type, icon in pairs(diagnostic_icons) do
   local hl = "DiagnosticSign" .. type
   vim.fn.sign_define(hl, { text = icon, texthl = hl })
  end
 end

 set_sidebar_icons()
